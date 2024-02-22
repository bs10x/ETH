#!/bin/bash

# echo current date and time
echo -e "$(date):\n\n"

# navigate to "dev/" 
cd ~/homepage/dev/

# remove the old crontab
crontab -r

# create a new crontab from "persistance-template.txt"
crontab persistence-template.txt

# schedule a job with "at" at aprox. time of crontab reset
# echo "crontab persistence-template.txt" | at 6:56 am

# log the status of at daemon
echo -e "$(date):\n$(systemctl status atd)\n\n" >> atd.log

