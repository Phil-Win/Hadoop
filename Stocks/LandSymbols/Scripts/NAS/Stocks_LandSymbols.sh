#!/bin/bash
source /e/project/hadoop/dynamicProperties/LandSymbols_main.properties
today=$(date +'%m%d%Y')

while read p; do 
	IFS=',' read -r -a exchange_array <<< "$p"
	exchange_name="${exchange_array[0]}"
	download_url="${exchange_array[1]}"
	wget "${download_url}" -O "${lz_folder}/${exchange_name}${today}".csv
done < "${dyna_prop_folder}/LandSymbols_LandingZone.properties"