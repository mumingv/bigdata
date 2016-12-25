#/bin/bash

# 运行前准备
hadoop fs -ls input > /dev/null 
if [[ $? -eq 0 ]]; then
    hadoop fs -rm -r input
fi
hadoop fs -mkdir input
hadoop fs -put input/hadoop_input.txt input/

hadoop fs -ls output > /dev/null 
if [[ $? -eq 0 ]]; then
    hadoop fs -rm -r output
fi
if [[ -e hdfs_output/output ]]; then
    rm -rf hdfs_output/output
fi

rm -rf hdfs_output/*

# 运行程序
hadoop jar ./share/hadoop/tools/lib//hadoop-streaming-2.5.2.jar -files mycode/exercise/answer/combine_letter_mapper.sh,mycode/exercise/answer/combine_letter_reducer.sh -input input -output output -mapper "sh combine_letter_mapper.sh" -reducer "sh combine_letter_reducer.sh"
hadoop fs -get output ./hdfs_output/
