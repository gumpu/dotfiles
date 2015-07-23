#!/usr/bin/env python

import datetime
import sys

if len(sys.argv) > 1:
    print(str(datetime.datetime.utcfromtimestamp(float(sys.argv[1]))))
else:
    print("Usage: {} <unix timestamp>\n")


