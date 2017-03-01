#!/bin/bash
source /e/project/Hadoop/dynamicProperties/LandSymbols_receive.properties

ssh $pi_connection "rm $pi_landing_zone/*"