#!/bin/bash

# Create another group

# Define the new groupname
GROUP="testgroup"

# Create the group
groupadd $GROUP

# Search for the group
grep $GROUP /etc/group
