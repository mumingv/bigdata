#!/bin/bash
#/***********************************************************
#      FileName: last_letter_mapper.sh
#          Desc: 统计尾字母分别为a~z的单词数目，以及尾字母为a~z的单词平均长度
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2016-12-25 14:18:00
#       History:
# ***********************************************************/

# 几点说明：
# 1. 单词统计不区分大小写，所以需要做归一化处理，即：将所有单词全部转成小写形式；
# 2. 标点符号与单词连在一起，影响单词统计，需要去除后再统计；
# 3. 数字0-9，不参与统计，需要去除；
# 4. 对于连体词，如：we're / this's / I'll / I'd 等，考虑到 are、is 、will 做统计没有太多意义，
#    所以统一去除 're、's、'll，只保留前面的 we / this / I 进行统计。

while read LINE; do
    LINE=`echo $LINE | tr '[A-Z]' '[a-z]'`
    LINE=`echo $LINE | sed -r 's/([\,\.\!\?\$\-]|[0-9]|’s|’re|’ve|’d|’m|n’t|’t|’ll|y’|’|…|“|”|‘)/ /g'`
    for word in $LINE; do
        echo "${word:$((${#word}-1)):1} ${#word}"  # 输出：单词尾字母 单词长度
    done
done
