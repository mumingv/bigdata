#/bin/bash

if [ -e WordCount.jar ]; then
    rm WordCount.jar
fi
if [ -e classes ]; then
    rm -rf classes
fi
