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

在$HADOOP_HOME目录下执行，以统计首字母单词为例，执行：run_first_letter.sh

```bash
$ cd $HADOOP_HOME
$ sh run_first_letter.sh
```


