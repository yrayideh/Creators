#!/bin/bash
#this script is designed to modify files or directories permissions
echo what is the file/directory you wish to modify?
read name
echo what permission do you wish to assign to file/directory?
read permission

sudo chmod $permission $name
echo $name has been granted a $permission permission
#this is a note addded to see how git diff and merge work
