#!/bin/bash
#/***********************************************************
#      FileName: first_letter_mapper.sh
#          Desc: 统计首字母分别为a~z的单词数目，以及首字母为a~z的单词平均长度
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2016-12-17 23:52:39
#       History:
# ***********************************************************/
while read LINE; do
    for word in $LINE; do
        echo "$word 1"
    done
done
