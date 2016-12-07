#!/bin/bash
iniMin=$(date)
count=0
echo "This script reads from DynamoDB"
echo "Script beginning at $iniMin"
echo

while true;
   do
   	i=1
    while [ $i -lt 26 ];
        do
            aws dynamodb get-item --table-name table_example --key file://read/read$i.json
            let i=i+1
        done

    let count=count+1
done
