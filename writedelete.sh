#!/bin/bash
iniMin=$(date)
count=0
echo "This script writes and deletes from DynamoDB"
echo "Script beginning at $iniMin"
echo

while true;
   do
    aws dynamodb batch-write-item --request-items file://write.json
    i=1

    while [ $i -lt 26 ];
        do
            echo "Deleting record number $i"
            aws dynamodb delete-item --table-name table_example --key file://del/del$i.json
        let i=i+1
        done
    
    let count=count+1
done
