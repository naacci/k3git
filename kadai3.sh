#!/bin/bash

a=$1
b=$2
c=`expr $a \* $b`
echo "2つの積は"$c"です"
while [ $a -ne $b ]; do
 if [ $a -gt $b ]; then
  a=`expr $a - $b`
 elif [ $a -lt $b ]; then
  b=`expr $b - $a`
 fi
done
echo "最大公約数は"$a
echo "最小公倍数は"`expr $c / $a`
