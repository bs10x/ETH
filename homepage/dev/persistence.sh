#!/bin/bash

# navigate to "dev/" 
cd ~/homepage/dev/

# remove the old crontab
crontab -r

# create a new crontab from "persistance-template.txt"
crontab persistence-template.txt

