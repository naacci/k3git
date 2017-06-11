#!/bin/bash

#答えの準備
echo "2つの積は189000です" > ans1
echo "最大公約数は30" >> ans1
echo "最小公倍数は6300" >> ans1

#出力の準備
./kadai3.sh 630 300 > output1 || exit 1 #失敗したらexit

#答えと出力比較
diff ans1 output1 || exit 1 # 違ったらexit

echo "test pass!"
