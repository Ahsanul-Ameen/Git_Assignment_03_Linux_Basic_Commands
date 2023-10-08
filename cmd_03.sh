#!/bin/bash

# Create two files on each directory

# Define the username you want to search for
USER="testuser"

# Use the cut and grep commands to find the user's home directory
HPAH=$(cut -d ':' -f 6 /etc/passwd | grep "$USER")

# Display the result
echo "The home directory of $USER is: $HPAH"

DIR1="${HPAH}/os-concepts"
DIR2="${HPAH}/ubuntu-is-the-best"

echo "Creating file... at $DIR1"

echo "File inside os-concepts" > $DIR1/file1.txt

echo "Creating file... at $DIR2"

echo "File inside ubuntu-is-the-best" > $DIR2/file1.txt


echo "Output..."

tree $HPAH
