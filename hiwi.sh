#1.Write a Ruby or Bash script that will print usernames of all users on a Linux system together with their home directories.
#for all created usernames
getent passwd {1000..6000}| cut -d: -f1,6
#for all usernames
getent passwd {0..65535} | cut -d: -f1,6
