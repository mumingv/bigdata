# 说明

## 统计首字母单词和长度

streaming程序：

```
first_letter_mapper.sh
first_letter_reducer.sh
```

运行脚本：

```
run_first_letter.sh
```


## 统计尾字母单词和长度

streaming程序：

```
last_letter_mapper.sh
last_letter_reducer.sh
```

运行脚本：

```
run_last_letter.sh
```


## 统计首尾字母组合单词和长度

streaming程序：

```
combine_letter_mapper.sh
combine_letter_reducer.sh
```

运行脚本：

```
run_combine_letter.sh
```


# 步骤

## 执行部署脚本

```bash
$ sh deploy.sh
```


## 执行运行脚本

在$HADOOP_HOME目录下执行，以统计首字母单词为例，执行：run_first_letter.sh。

```bash
$ cd $HADOOP_HOME
$ sh run_first_letter.sh
```


## 查看运行结果

运行脚本执行完成后，查看统计结果，以查看首字母单词为例，命令如下。

```
$ cd $HADOOP_HOME/hdfs_output/output
$ cat part-00000 
a       982     3.21
b       480     4.19
c       351     5.61
d       381     3.77
e       128     5.51
f       415     5.08
g       431     4.14
h       574     3.72
i       878     1.65
j       149     4.50
k       95      4.43
l       326     5.14
m       495     3.50
n       224     4.00
o       470     2.65
p       225     5.78
q       12      5.00
r       220     5.02
s       775     5.03
t       1241    3.64
u       83      3.57
v       51      5.60
w       724     3.76
y       455     3.31
```


