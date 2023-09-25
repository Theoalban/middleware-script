#!/bin/bash

dir_name=cup1
mkdir $dir_name
ls $dir_name
touch $dir_name/report.log
cat $dir_name/report.log
sleep 2
echo "hello world" >> $dir_name/report.log
sleep 1
cat $dir_name/report.log

