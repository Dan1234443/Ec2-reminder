#!/bin/bash

INSTANCE_NAME="My EC2 Instance"

# Function that runs when SSH session ends
reminder() {
    echo ""
    echo "⚠️  SSH session closed."
    echo "Reminder: If you are done, stop your EC2 instance to avoid charges."
}

# Detect exit of SSH session
trap reminder EXIT

echo "Connected to $INSTANCE_NAME"
echo "When you exit SSH, a reminder will appear."

# Keep session running
while true
do
    sleep 60
done