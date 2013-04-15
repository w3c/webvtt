#!/bin/bash
# Publishes webvtt spec to cvs

if [ $# -eq 0 ]
then
  echo $0" error: provide W3C commit message as argument"
  exit 1
fi

COMMIT_MSG=$1

echo "./create_static.sh"
./create_static.sh

echo "cp Overview.html ~/Sites/html5/CVS/html5/webvtt/"
cp Overview.html ~/Sites/html5/CVS/html5/webvtt/

echo "cd ~/Sites/html5/CVS/html5/webvtt"
cd ~/Sites/html5/CVS/html5/webvtt

echo "OK to commit to W3C with following message (y/n)? "$COMMIT_MSG
read CONTINUE

if [ $CONTINUE = 'y' -o $CONTINUE = 'Y' ]
then
  echo "cvs commit -m '$COMMIT_MSG'"
  cvs commit -m "$COMMIT_MSG"
fi