#!/bin/bash

# seperate screenshot based on date
IFS=$'\n'
dt=`date +%Y`

for screenshot in `cd ~/Pictures;ls -la | grep -e $dt -e 'Screenshot' | grep -v Screenshots`
do
    name=`cd ~/Pictures;awk '{ print $9 " " $10 " "  $11 " " $12}' <<< "$screenshot"`
    folder=`cd ~/Pictures;awk '{ print $11}' <<< "$screenshot"`
    cd ~/Pictures/Screenshots;mkdir -p $folder
    cd ~/Pictures;mv $name ~/Pictures/Screenshots/$folder
done

unset IFS

