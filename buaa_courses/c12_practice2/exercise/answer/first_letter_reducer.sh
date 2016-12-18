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
totallength=0  # 相同首字母的单词总长度
letter=""
while read LINE; do
    newletter=`echo $LINE | cut -d ' '  -f 1`
    length=`echo $LINE | cut -d ' '  -f 2`
    if [[ $newletter != $letter ]]; then
        if [[ $count -ne 0 ]]; then
            averagelength=`echo "scale=2;$totallength/$count" | bc`
            echo -e "$letter\t$count\t$averagelength"
        fi
        letter=$newletter
        count=1
        started=1
        totallength=$length
    else
        count=$(( $count + 1 ))
        totallength=$(( $totallength + $length ))
    fi
done
averagelength=`echo "scale=2;$totallength/$count" | bc`
echo -e "$letter\t$count\t$averagelength"  # 输出：单词首字母 单词数量 单词平均长度
