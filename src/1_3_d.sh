#!/bin/bash

seq 5 | awk '/[24]/'
echo

seq 5 | awk '$1%2==0'
echo

seq 5 | awk '$1%2==0{printf("%s 偶数\n",$1)}'
# seq 5 | awk '$1%2==0{print($1, "偶数")}'
echo

seq 5 | awk '$1%2==0{print $1,"偶数"}$1%2{print $1,"奇数"}'
echo

seq 5 | awk 'BEGIN{a=0}$1%2==0{print $1,"偶数"}$1%2{print $1,"奇数"}{a+=$1}END{print "合計",a}'
