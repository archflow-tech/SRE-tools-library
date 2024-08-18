#!/bin/bash

# This script checks for security updates and lists them.

# Update package list
echo "Updating package list..."
apt-get update -y

# List security updates
echo "Checking for security updates..."
apt-get -s upgrade | grep "^Inst" | grep -i security

# Notify if updates are available
if apt-get -s upgrade | grep -q "^Inst.*security"; then
    echo "Security updates are available."
else
    echo "No security updates available."
fi
