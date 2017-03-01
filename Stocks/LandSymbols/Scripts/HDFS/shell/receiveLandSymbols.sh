#!/bin/bash
source /e/project/Hadoop/dynamicProperties/LandSymbols_receive.properties

for file in $(ssh $pi_connection "ls $pi_landing_zone"); do
	ssh $pi_connection "cat $pi_landing_zone/$file" | hdfs dfs -put - $hdfs_receive_zone/$file
done