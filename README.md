# DyanmoDB Load Generator

This repository consists of two principle scripts, read.sh and writedelete.sh. These scripts are used together to simulate load on a DyanmoDB database to test your monitoring solution.


## read.sh
read.sh will utilize a json file in a loop to retrieve contents of specific items in a loop to simulate "read" activity.

## writedelete.sh
writedelete.sh will, in a loop, write contents from the included JSON file to a specified database table. It will then iterate over each of the new items and delete them one by one. This is used to simulate "write" activity.
