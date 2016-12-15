#/bin/bash

if [ -e WordCount.jar ]; then
    rm WordCount.jar
fi
rm -rf classes
mkdir -p classes
javac -d ./classes/ ./src/WordCount.java 
jar -cvf ./WordCount.jar -C ./classes/ . 
