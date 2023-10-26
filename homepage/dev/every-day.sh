#!/bin/bash

# Navigate to the directory containing the HTML file
cd ~/homepage/dev

# Get the current date in the desired format
current_date=$(date +"%a. %d.%m.%Y")

# Update the HTML file with the current date
sed -i "s/<p>Last updated: .*<\/p>/<p>Last updated: $current_date<\/p>/" every-day.html


