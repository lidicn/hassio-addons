#!/bin/bash
set -e
options=$(cat /data/options.json | jq -r 'if .options then [.options[] | "-o "+.name+"="+.value ] | join(" ") else "" end')
python3 /usr/src/app/SubFinder.py -r /transmission/downloads/complete
