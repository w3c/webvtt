#!/bin/bash
# Converts ReSpec based webvtt spec to static html page
echo "phantomjs ../../respec/tools/respec2html.js webvtt.html Overview.html"
phantomjs ../../respec/tools/respec2html.js webvtt.html Overview.html
