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

# Get a list of all installed packages
packages=$(dpkg --list | grep '^ii' | awk '{ print $2 }')

# Remove each package
for package in $packages; do
    sudo apt-get remove --purge -y $package
done
