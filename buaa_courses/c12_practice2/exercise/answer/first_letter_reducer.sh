#! /bin/bash
#/***********************************************************
#      FileName: first_letter_reducer.sh
#          Desc: 统计首字母分别为a~z的单词数目，以及首字母为a~z的单词平均长度
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2016-12-17 23:53:07
#       History:
# ***********************************************************/

# 重要说明：该脚本的输入要求输入数据已经做好了排序。

count=0
word=""
while read LINE; do
  newword=`echo $LINE | cut -d ' '  -f 1`
  if [[ $newword != $word ]];then
    [ $count -ne 0 ] && echo -e "$word\t$count"
    word=$newword
    count=1
    started=1
  else
    count=$(( $count + 1 ))
  fi
done
echo -e "$word\t$count"
