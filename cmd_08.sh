#!/bin/bash

# Add the user to the new group

# Define the username you want to search for
USER="testuser"
# Define the new groupname
GROUP="testgroup"

# List out current groups belongings
echo "Current groups..."

groups $USER

# Add the user to the new group
usermod -a -G $GROUP $USER

# List out new groups belongings
echo "New groups..."

groups $USER
