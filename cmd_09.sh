#!/bin/bash

# Create a file called crash.in 
# ( File should contain the word crash in it )
# in different directories and then find the file in all the locations using find command

# Define the username you want to search for
USER="testuser"

# Use the cut and grep commands to find the user's home directory
HPAH=$(cut -d ':' -f 6 /etc/passwd | grep "$USER")

DIR1="${HPAH}/os-concepts"
DIR2="${HPAH}/ubuntu-is-the-best"

# Create a file called crash.in in different directories
echo -e "I'll crash you man!\nAre you ready to be crashed?" | tee $DIR1/crash.in > $DIR2/crash.in

# Find the file in all the locations using find command
find $HPAH -name "crash.in" -type f