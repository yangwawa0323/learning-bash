#!/bin/bash

TMPFILE=/tmp/filename.$$

dialog --inputbox "PLS input the filename "  10 50  2> $TMPFILE

FILENAME=$( cat $TMPFILE  )

echo "the filename -> $FILENAME"

rm $TMPFILE
