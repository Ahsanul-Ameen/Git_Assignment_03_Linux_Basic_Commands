#!/bin/bash

# Create a user with user group

# Set the username
USER="testuser"

# Inform the user about the process
echo "Creating new user $USER..."

# Create a new user with a home directory (-m flag)
useradd -m $USER

# Provide feedback that the user has been added
echo "User $USER added..."

# Display information about the new user from /etc/passwd
echo "User information:"
cat /etc/passwd | grep $USER

# Provide feedback that the group has been added
echo "Group $USER added..."

# Display information about the new user's group from /etc/group
echo "Group information:"
cat /etc/group | grep $USER
