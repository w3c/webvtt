#!/bin/sh -e
# Publishes WebVTT spec to CVS

cd "$(dirname $0)"

GITUSER="$(git config --get user.email)"
if [ $GITUSER = philipj@opera.com ]; then
    CVSUSER=pjgenste
elif [ $GITUSER = silviapfeiffer1@gmail.com ]; then
    CVSUSER=spfeiffe
else
    echo "Unable to map $GITUSER to a CVS user"
    exit 1
fi

export CVSROOT=$CVSUSER@dev.w3.org:/sources/public
export CVS_RSH=ssh

if [ ! -e html5 ]; then
    echo "# Checkout CVS"
    cvs checkout html5/webvtt
else
    echo "# Update CVS"
    cd html5/webvtt
    cvs update
    cd ../..
fi
echo

echo "# Generate static HTML"
phantomjs respec/tools/respec2html.js webvtt.html html5/webvtt/Overview.html

echo "# Commit to CVS"
if [ "$1" != "-f" ]; then
    read -p "Really commit? (y) " CONTINUE
    if [ "$CONTINUE" != "y" ]; then
	echo "Not really."
	exit 1
    fi
fi
COMMIT="$(git rev-parse HEAD)"
cd html5/webvtt
cvs commit -m "Sync WebVTT with Git commit $COMMIT"
