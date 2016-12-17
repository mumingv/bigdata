#/bin/bash

hadoop fs -ls output 2&> /dev/null
if [[ $? -eq 0 ]]; then
    hadoop fs -rm -r output
fi
if [[ -e hdfs_output/output ]]; then
    rm -rf hdfs_output/output
fi

hadoop jar ./share/hadoop/tools/lib//hadoop-streaming-2.5.2.jar -files mycode/wordcount_sh/wordcount_mapper.sh,mycode/wordcount_sh/wordcount_reducer.sh -input input -output output -mapper "sh wordcount_mapper.sh" -reducer "sh wordcount_reducer.sh"
rm -rf hdfs_output/*
hadoop fs -get output ./hdfs_output/
hadoop fs -rm -r output
