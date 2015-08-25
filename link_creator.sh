#!/bin/bash

FILES_DIR=$1
LINKS_DIR=$2
PATTERN=$3

cd $LINKS_DIR
ls -1 $FILES_DIR/$PATTERN |
while read arq
do
   	echo $arq
   	link=`basename $arq`
   	echo $link
#    name=`echo $arq | cut -d'.' -f1` 
#    ext=`echo $arq | cut -d'.' -f2-` 
#    link=`echo "${name%?}"`
    ln -sf -T $arq $link
done
cd -
