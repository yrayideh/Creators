#!/bin/bash
#this script is designed to send a directory from one server to the other

echo what directory do you want to send?
read directory
echo who are you sending it to?
read who
echo what is the IP address?
read address
echo where is the destination?
read destination

sudo scp -r $directory $who@$address:$destination
