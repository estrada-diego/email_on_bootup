#!/bin/bash

# Wait for 60 seconds to ensure the system is fully up
sleep 60

# Get the external IP address using 'ip' command
IP=$(ip -4 route get 1.1.1.1 | awk '{print $7}')

# Create the email with a subject header and send it using msmtp
{
    echo "Subject: IP Address"
    echo ""
    echo "$IP"
} | msmtp diego.estrada@utexas.edu

