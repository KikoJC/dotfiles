#!/bin/bash

# Get the notification ID
NOTIFICATION_ID=$(makoctl list | grep -oE '[0-9]+')

# Wait for 5 minutes
sleep 2

# Dismiss the notification
makoctl dismiss $NOTIFICATION_ID
