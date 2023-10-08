#!/bin/bash

# Create two directories in user's home directory named os-concepts and ubuntu-is-the-best

# Define the username you want to search for
USER="testuser"

# Use the cut and grep commands to find the user's home directory
HPAH=$(cut -d ':' -f 6 /etc/passwd | grep "$USER")

# Display the result
echo "The home directory of $USER is: $HPAH"

DIR1="${HPAH}/os-concepts"
DIR2="${HPAH}/ubuntu-is-the-best"

ls -l $HPAH

echo "Creating directories... at $DIR1 and $DIR2"

### rm -r $DIR1 $DIR2

mkdir $DIR1 $DIR2


echo "Output..."

ls -l $HPAH
