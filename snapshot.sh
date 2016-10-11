#!/bin/bash
# Generates a snapshot in archives/

STATUS=$1
NEW_DATE=$2
PREV_URL=$(echo $3 | sed -e 's#/#\\/#g')

USAGE="\n\nUsage: $0 <status> <date> <prevurl>\n\
For example: $0 WD 2015-10-31 http://www.w3.org/TR/2014/WD-webvtt1-20141113/"

case $(uname) in
  *Darwin*)
    DARWIN=1
    ;;
esac

function replace {
  if [ -n "$DARWIN" ] ; then
    sed -i "" "$1" "$2"
  else
    sed -i "$1" "$2"
  fi
}

function check {
  if [ $? != 0 ] ; then
    echo "* $1: Failed (!)"
    exit 1
  fi
  echo "* $1: Done"
}

if [ $# -lt 2 ] ; then
  echo -e "Too few arguments. $USAGE"
  exit 1
fi

cp index.bs index.temp.bs
check "Make temporary copy of source file"

mkdir -p "archives/$NEW_DATE/"
check "Create directory archives/$NEW_DATE/"

cp *.png "archives/$NEW_DATE/"
check "Copy images to archives/$NEW_DATE/"

replace "s/^Status: .*$/Status: $STATUS/" index.temp.bs
check "Replace Status metadata"

replace "1,/^$/s/^$/Date: $NEW_DATE/" index.temp.bs
check "Add Date metadata"

replace "1,/^$/s/^$/Previous Version: $PREV_URL/" index.temp.bs
check "Add Previous Version metadata"

replace "1,/^$/s/^$/TR: http:\/\/www.w3.org\/TR\/webvtt-1\//" index.temp.bs
check "Add TR metadata"

bikeshed spec index.temp.bs archives/$NEW_DATE/Overview.html
check "Generate with bikeshed"

rm index.temp.bs
check "Remove temporary source file"

echo "*** Done ***"

exit 0
