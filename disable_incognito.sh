#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo "Incognito Mode Disabler"
echo "Version: 1.1"
echo "Author: John Board"
echo "==============================\n"
echo "Creating settings directory..."
mkdir /etc/opt/chrome/policies/managed/ -p
echo "Writing setting..."
echo '{\n    "IncognitoModeAvailability": 1\n}' > /etc/opt/chrome/policies/managed/incognito_policy.json
echo "Finished!"
