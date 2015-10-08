#!/bin/bash
# Generates a snapshot in archives/

STATUS=$1
NEW_DATE=$2

USAGE="\n\nUsage: $0 <status> <date>\n\
For example: $0 WD 2015-10-31"

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

cp webvtt.bs webvtt.temp.bs
check "Make temporary copy of source file"

mkdir -p "archives/$NEW_DATE/"
check "Create directory archives/$NEW_DATE/"

cp *.png "archives/$NEW_DATE/"
check "Copy images to archives/$NEW_DATE/"

replace "s/^Status: .*$/Status: $STATUS/" webvtt.temp.bs
check "Replace Status metadata"

replace "1,/^$/s/^$/Date: $NEW_DATE/" webvtt.temp.bs
check "Add Date metadata"

bikeshed spec webvtt.temp.bs archives/$NEW_DATE/index.html
check "Generate with bikeshed"

rm webvtt.temp.bs
check "Remove temporary source file"

echo "*** Done ***"

exit 0
