#!/bin/sh

hour=$(date +%H)
minute=$(date +%M)
day=$(date +%w)
Ec_batch=1
dir="~/lib/sh/automatic_class_joiner"
cd $dir g++ $dir link_provider.cpp -o link_provider 
link=$(./link_provider)
xdg-open $link
