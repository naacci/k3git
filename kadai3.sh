#!/bin/bash

a=$1
b=$2

expr $a + $b > /dev/null 2>&1
if [ $? -eq 2 ]; then
 "input 2 natural numbers"
else

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
echo `expr $1 \* $2`
fi
