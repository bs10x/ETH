#!/bin/bash

# Navigate to the directory containing the HTML file
cd ~/homepage/dev

# Get the current date and time
now=$(date +"%Y-%m-%d %H:%M:%S")

# Update the every-day.html file with the current date and time
sed -i "s/<span id=\"modified\">.*<\/span>/<span id=\"modified\">$now<\/span>/" every-day.html