#!/bin/bash

# 配置
DIRNAME=exercise/answer  # 位于$HADOOP_HOME/mycode/目录下

# 处理
mkdir -p $HADOOP_HOME/mycode/$DIRNAME
mkdir -p $HADOOP_HOME/input/
cp -r first_letter_mapper.sh $HADOOP_HOME/mycode/$DIRNAME/
cp -r first_letter_reducer.sh $HADOOP_HOME/mycode/$DIRNAME/
cp -r hadoop_input.txt $HADOOP_HOME/input/
cp -r run.sh $HADOOP_HOME/
