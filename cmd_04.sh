#!/bin/bash

# List the files with detailed information ( including file permission )

# Define the username you want to search for
USER="testuser"

# Use the cut and grep commands to find the user's home directory
HPAH=$(cut -d ':' -f 6 /etc/passwd | grep "$USER")

# Display the result
echo "The home directory of $USER is: $HPAH"

DIR1="${HPAH}/os-concepts"
DIR2="${HPAH}/ubuntu-is-the-best"


echo "Output..."

tree $HPAH

ls -la $DIR1 $DIR2
