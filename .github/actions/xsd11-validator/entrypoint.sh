#!/bin/bash -l

for MAP_FILE in $INPUT_FILES
do
    java -jar ./.github/actions/xsd11-validator/xsd11-validator-1.0.jar $INPUT_SCHEMA $MAP_FILE
    if [ $? == 0 ]; then
        echo "$MAP_FILE validates"
    fi
done
