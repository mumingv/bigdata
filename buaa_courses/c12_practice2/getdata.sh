#/***********************************************************
#      FileName: getdata.sh
#          Desc: 获取全国城市空气质量数据（来源：中国环境保护部）
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2016-11-22 13:21:30
#       History:
# ***********************************************************/
#/bin/bash

# 数据存放目录
DATA_ORIG_DIR=01_data_orig
DATA_FILTER_DIR=02_data_filter

# 获取10月份和11月份数据
if [ ! -e ${DATA_ORIG_DIR} ]; then
    mkdir -p ${DATA_ORIG_DIR}
    for day in {01..31}; do
        for pagenum in {1..13}; do
            echo -n "get data of 2016-10-${day} page${pagenum} ... "
            lynx "http://datacenter.mep.gov.cn/report/air_daily/air_dairy.jsp?city=&startdate=2016-10-${day}&enddate=2016-10-${day}&page=${pagenum}" -dump > ${DATA_ORIG_DIR}/2016-10-${day}.page${pagenum}
            echo "OK"
        done
    done
else
    echo "Directory ${DATA_ORIG_DIR} is already exist!"
fi

# 处理10月份数据
if [ ! -e ${DATA_FILTER_DIR} ]; then
    mkdir -p ${DATA_FILTER_DIR}
    for day in {01..31}; do
        echo -n "filter data of 2016-10-${day} ... "
        for pagenum in {1..13}; do
            grep -E '   [0-9]{1,3} ' ${DATA_ORIG_DIR}/2016-10-${day}.page${pagenum} | sed 's/^   //' >> ${DATA_FILTER_DIR}/2016-10-${day}.total
        done
        echo "OK"
    done
else
    echo "Directory ${DATA_FILTER_DIR} is already exist!"
fi



