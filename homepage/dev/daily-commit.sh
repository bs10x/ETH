#!/bin/bash

# Navigate to the directory containing the HTML file
cd ~/homepage/dev

# Get the current date and time
now=$(date +"%Y-%m-%d %H:%M:%S")

# Update the every-day.html file with the current date and time
sed -i "s/<span id=\"modified\">.*<\/span>/<span id=\"modified\">$now<\/span>/" every-day.html

# Add all changes to the staging area
git add ./

# Commit the changes with a commit message
git commit -m "daily commit ($now)"

# Push the changes to the upstream remote origin master branch
git push -u origin master