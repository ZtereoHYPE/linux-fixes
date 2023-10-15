#!/bin/bash
prlimit --pid $(pgrep -x gnome-shell) --rttime=1000000:2000000