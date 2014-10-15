#!/bin/sh -e
# Generates a static WebVTT spec

cd "$(dirname $0)"

MODE="$1"
if [ -z "$MODE" ]; then
    MODE="-cg"
fi

DEST="$2"
if [ -z "$DEST" ]; then
    DEST="webvtt$MODE.html"
fi

TEMP="webvtt-tmp.html"

sed "s/config-cg\.js/config$MODE.js/" webvtt.html > "$TEMP"
phantomjs --ssl-protocol=any respec/tools/respec2html.js "$TEMP" "$DEST"
rm -f "$TEMP"
