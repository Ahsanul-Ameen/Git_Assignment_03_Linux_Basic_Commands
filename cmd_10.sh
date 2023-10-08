#!/bin/bash

# Then, replace the lines with crash to broken to all files ( use sed, xargs )

# Define the username you want to search for
USER="testuser"

# Use the cut and grep commands to find the user's home directory
HPAH=$(cut -d ':' -f 6 /etc/passwd | grep "$USER")

DIR1="${HPAH}/os-concepts"
DIR2="${HPAH}/ubuntu-is-the-best"

# find occurances of crash in all files
find $HPAH -name "crash.in" -type f | xargs grep "crash" | wc -l

# find occurances of broken in all files
find $HPAH -name "crash.in" -type f | xargs grep "broken" | wc -l

# replace the lines with crash to broken to all files
find $HPAH -name "crash.in" -type f | xargs sed -i 's/crash/broken/g'

# find occurances of crash in all files
find $HPAH -name "crash.in" -type f | xargs grep "crash" | wc -l

# find occurances of broken in all files
find $HPAH -name "crash.in" -type f | xargs grep "broken" | wc -l
