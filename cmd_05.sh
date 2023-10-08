#!/bin/bash

# Update file permission so that owner can read,write 
# and group can only read and others can not do anything

# Define the username you want to search for
USER="testuser"

# Use the cut and grep commands to find the user's home directory
HPAH=$(cut -d ':' -f 6 /etc/passwd | grep "$USER")

# Display the result
echo "The home directory of $USER is: $HPAH"

DIR1="${HPAH}/os-concepts"
DIR2="${HPAH}/ubuntu-is-the-best"

# Update permissions

chmod 640 $DIR1/file1.txt $DIR2/file1.txt

echo "Permissions..."

ls -la $DIR1/file1.txt 
ls -la $DIR2/file1.txt
