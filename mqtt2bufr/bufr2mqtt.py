#!/usr/bin/env python3
# bufr2mqtt - Convert BUFR to MQTT messages
#
# Copyright (C) 2018  ARPA-SIM <urpsim@smr.arpa.emr.it>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
# Author: Emanuele Di Giacomo <edigiacomo@arpae.it>

import sys
import argparse
import json
import traceback

import dballe
import paho.mqtt.client as mqtt


PACKAGE_BUGREPORT = "@PACKAGE_BUGREPORT@"
PACKAGE_VERSION = "@PACKAGE_VERSION@"


def on_log(client, userdata, level, buf):
    if userdata["debug"]:
        sys.stderr.write("{}\n".format(buf))


def convert_to_mqtt(dballefile):
    # Generator that return topic, payload, is_station_data
    for msgs in dballefile:
        for msg in msgs:
            for data in msg.query_station_data():
                try:
                    topic, payload = data_to_mqtt(data)
                except Exception:
                    traceback.print_exc()
                else:
                    yield topic, payload, True

            for data in msg.query_data():
                try:
                    topic, payload = data_to_mqtt(data)
                except Exception:
                    traceback.print_exc()
                else:
                    yield topic, payload, False


def data_to_mqtt(data):
    # Convert msg data to topic, payload
    d = data.data_dict
    var = data["variable"]
    topic = (
        "/{ident}/{lon},{lat}/{rep_memo}/"
        "{level}/{trange}/{varcode}"
    ).format(
        ident=d.get("ident", "-"),
        lon="-" if d.get("lon") is None else int(d["lon"]*10**5),
        lat="-" if d.get("lat") is None else int(d["lat"]*10**5),
        rep_memo=d.get("report", "-"),
        level=",".join("-" if i is None else str(i) for i in d.get("level", [None]*4)),
        trange=",".join("-" if i is None else str(i) for i in d.get("trange", [None]*3)),
        varcode=var.code,
    )
    payload = {
        "v": var.enqc()
    }
    if "datetime" in d:
        payload["t"] = d["datetime"].strftime("%Y-%m-%dT%H:%M:%S")

    attrs = var.get_attrs()
    if len(attrs) > 0:
        payload["a"] = {
            v.code: v.enqc()
            for v in attrs
        }

    return topic, payload


def publish_to_mqtt(mqttclient, topic, payload, is_station_data):
    try:
        info = mqttclient.publish(topic, json.dumps(payload), qos=1, retain=is_station_data)
        info.wait_for_publish()
    except Exception:
        traceback.print_exc()


def handle_signals(mqttclient):
    import signal

    def cleanup_on_signal(signum, frame):
        sys.stderr.write("Received signal {}\n".format(signum))
        if signum == signal.SIGHUP:
            mqttclient.reconnect()
        else:
            mqttclient.disconnect()
            sys.exit(255)

    signal.signal(signal.SIGHUP, cleanup_on_signal)
    signal.signal(signal.SIGTERM, cleanup_on_signal)
    signal.signal(signal.SIGINT, cleanup_on_signal)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(prog="bufr2mqtt", add_help=False,
                                     epilog="Report bugs to {}".format(
                                         PACKAGE_BUGREPORT
                                     ))
    parser.add_argument("--help", action="help",
                        help="show this help and exit")
    parser.add_argument("--version", action="version",
                        version="%(prog)s " + PACKAGE_VERSION,
                        help="show version and exit")
    parser.add_argument("-h", "--host",
                        help="host to connect to (default: localhost)",
                        default="localhost")
    parser.add_argument("-k", "--keepalive", metavar="SECONDS",
                        help=("seconds between sending PING commands to the "
                              "broker (default %(default)s)"),
                        type=int, default=60)
    parser.add_argument("-p", "--port", metavar="PORT",
                        help=("connect to the port specified "
                              "(default: %(default)s)"),
                        type=int, default=1883)
    parser.add_argument("-t", "--topic", metavar="TOPIC",
                        nargs="*", default=[],
                        help=("MQTT topic to subscribe to (may be repeated "
                              "multiple times"))
    parser.add_argument("-u", "--username", metavar="NAME",
                        help="username for authenticating with the broker")
    parser.add_argument("-P", "--pw", metavar="PASSWORD",
                        help="password for authenticating with the broker")
    parser.add_argument("-d", "--debug", action="store_true",
                        help="enable debug messages")

    args = parser.parse_args()

    mqttclient = mqtt.Client(userdata={
        "topics": args.topic,
        "debug": args.debug,
    })

    if args.username:
        mqttclient.username_pw_set(args.username, password=args.pw)

    mqttclient.on_log = on_log

    mqttclient.connect(args.host, port=args.port, keepalive=args.keepalive)

    handle_signals(mqttclient)

    mqttclient.loop_start()

    importer = dballe.Importer("BUFR")
    with importer.from_file(sys.stdin) as f:
        for topic, payload, is_station in convert_to_mqtt(f):
            publish_to_mqtt(mqttclient, topic, payload, is_station)

    mqttclient.loop_stop()
