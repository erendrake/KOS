#!/bin/bash

lib_folder="../../KSP_LIB/"

if [ ! -d "$lib_folder" ]; then
        echo "Lib folder $lib_folder Not found, you will need it"
        exit 100
else
        echo "Found Lib folder $lib_folder"
fi

IFS=$'\n' read -d '' -r -a lines < external_dependences

for i in ${lines[@]} 
do

        if [ -f $lib_folder$i ];
        then
                echo "Found $lib_folder$i"
        else
                echo "Cant find $lib_folder$i you will need it"
        fi
done
