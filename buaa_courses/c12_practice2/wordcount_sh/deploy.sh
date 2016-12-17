#!/bin/bash

# 配置
DIRNAME=wordcount_sh  # 位于$HADOOP_HOME/mycode/目录下

# 处理
mkdir -p $HADOOP_HOME/mycode/$DIRNAME
mkdir -p $HADOOP_HOME/input/
cp -r wordcount_mapper.sh $HADOOP_HOME/mycode/$DIRNAME/
cp -r wordcount_reducer.sh $HADOOP_HOME/mycode/$DIRNAME/
cp -r sample.txt $HADOOP_HOME/input/
cp -r run.sh $HADOOP_HOME/
