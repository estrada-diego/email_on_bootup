#!/bin/bash

# Wait for 60 seconds to ensure the system is fully up
sleep 60

# Get the hostname and IP address
IP=$(hostname -I | awk '{print $1}')
HOSTNAME=$(hostname)

# Create the email content
echo "$HOSTNAME is online. IP address: $IP" > /tmp/email.txt
echo >> /tmp/email.txt
date >> /tmp/email.txt

# Send the email
mail -s "$HOSTNAME online" diego.estrada@utexas.edu < /tmp/email.txt

# Clean up
rm /tmp/email.txt
