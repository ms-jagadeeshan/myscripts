#!/bin/sh

hour=$(date +%H)
minute=$(date +%M)
day=$(date +%w)
Ec_batch=1
dir="/home/$USER/projects/myscripts/automatic_class_joiner"
#dir="~/lib/sh/automatic_class_joiner"
#mkdir -p $dir
cd
cd $dir && g++ link_provider.cpp -o link_provider 
link=$(./link_provider $hour $minute $day $Ec_batch)

xdg-open $link
