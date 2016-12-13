"""
Settings for Borinud.

Example::
    # project/settings.py
    SHOWDATA["SOURCES"] = [{
        "class": "borinud.utils.source.DballeDB",
        "url": "odbc://rmap",
    }, {
        "class": "borinud.utils.source.ArkimetBufrDB",
        "dataset": "http://localhost:8090/dataset/rmap",
        "measurements": [{
            "var": "B13011",
            "level": (1, None, None, None),
            "trange": (0, 0, 3600),
        }, {
            "var": "B12101",
            "level": (103, 2000, None, None),
            "trange": (254, 0, 0),
        }],
    }]
    SHOWDATA["CACHED_SUMMARY"] = "default"
    SHOWDATA["CACHED_SUMMARY_TIMEOUT"] = 3600
"""
from django.conf import settings

DEFAULTS = {
    "SOURCES": [],
    "CACHED_SUMMARY": None,
    "CACHED_SUMMARY_TIMEOUT": 0,
}

SHOWDATA = getattr(settings, 'SHOWDATA', {})

for name, default in DEFAULTS.items():
    if name not in SHOWDATA:
        SHOWDATA[name] = default
