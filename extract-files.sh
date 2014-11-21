#!/bin/sh

VENDOR=lge
DEVICE=f260

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$ `; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp /home/yoonsungmin/project_kk/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
