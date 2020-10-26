#!/bin/bash
# # create folder named current_users in /var/log/ if the folder don't exist
mkdir -p /var/log/current_users
# create folder named user_changes in /var/log/ if the folder don't exist
mkdir -p /var/log/user_changes
# used only to check if the right combination of data is generated from the paswd file 
getent passwd {1000..6000}| cut -d: -f1,6  > /var/log/current_users/Raw_current_users
#Actual file generated with MD5 hash algorithm by the over writing    
getent passwd {1000..6000}| cut -d: -f1,6 |md5sum >/var/log/current_users/current_users
