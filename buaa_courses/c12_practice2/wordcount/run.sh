#/bin/bash

hdfs dfs -rm -r output
hadoop jar mycode/WordCount.jar muming.examples.WordCount input output
rm -rf hdfs_output/*
hdfs dfs -get output ./hdfs_output
