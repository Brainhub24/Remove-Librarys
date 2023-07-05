#!/bin/bash

# -----------------------------------------------------------------------------
# Script: remove_libs.sh
# Description: Automated script to remove all installed libraries on a Linux system.
# License: GPL-3.0 License (https://www.gnu.org/licenses/gpl-3.0.en.html)
# Developer: Brainhub24
# Contact: github@brainhub24.com
# GitHub Repository: https://github.com/Brainhub24/Remove-Librarys
#
# This script provides a convenient and automated way to remove all installed libraries
# on a Linux system. It is useful for developers and users who want to test their own
# written code on a clean Linux environment or troubleshoot issues related to conflicting
# or problematic libraries.
#
# Examples:
#   - Remove all installed libraries:
#       $ ./remove_libs.sh
#
#   - Test your code on a clean Linux environment:
#       $ ./remove_libs.sh
#       $ # Install only the required libraries for your code
#       $ # Run your code and verify its behavior without interference from other libraries
#
#   - Troubleshoot library-related issues:
#       $ ./remove_libs.sh
#       $ # Reinstall the necessary libraries or specific versions
#       $ # Test the system with the reinstalled libraries to identify any conflicts or issues
#
# How to use:
#   1. Download the script from the GitHub repository:
#       $ wget https://github.com/Brainhub24/Remove-Librarys/remove_libs.sh
#
#   2. Give execute permission to the script:
#       $ chmod +x remove_libs.sh
#
#   3. Run the script with root privileges:
#       $ sudo ./remove_libs.sh
#
#   4. The script will automatically remove all installed libraries on your system.
#      Please note that this action cannot be undone, so proceed with caution.
# -----------------------------------------------------------------------------


# Check if dos2unix is installed
if ! command -v dos2unix &> /dev/null; then
    echo "dos2unix is not installed. Installing it..."
    if [[ "$(uname)" == "Linux" ]]; then
        sudo apt-get update
        sudo apt-get install -y dos2unix
    elif [[ "$(uname)" == "Darwin" ]]; then
        brew install dos2unix
    else
        echo "Unsupported operating system. Please install dos2unix manually."
        exit 1
    fi
    echo "dos2unix installed successfully."
fi

# Convert line endings to Unix format (LF)
dos2unix remove_libs.sh >/dev/null 2>&1

# Warning
echo "##############################################"
echo "WARNING: USE WITH CAUTION!"
echo "##############################################"
echo ""
echo "This script will remove all installed libraries on your Linux system."
echo "Please make sure you have a backup or are willing to proceed without any installed libraries."
echo "This action cannot be undone, and it may cause your system to become unstable or unusable."
echo ""
echo "If you choose to continue, please type 'I understand and accept the risks' (without quotes) and press Enter."
echo "If you do not accept the risks, please type 'Abort' (without quotes) and press Enter."
read -r response

# Check client's response
if [[ "$response" != "I understand and accept the risks" ]]; then
    echo "Abort: Script execution declined by the client."
    exit 0
fi

# Prompt for permission to run the process
echo "Do you want to proceed with removing all installed libraries? (y/n)"
read -r permission

# Check client's permission
if [[ "$permission" != "y" ]]; then
    echo "Abort: Script execution declined by the client."
    exit 0
fi

# Get a list of all installed packages
packages=$(dpkg --list | grep '^ii' | awk '{ print $2 }')

# Remove each package
for package in $packages; do
    sudo apt-get remove --purge -y "$package"
done
