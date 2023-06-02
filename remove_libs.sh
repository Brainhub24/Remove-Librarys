#!/bin/bash

# -----------------------------------------------------------------------------
# Script: remove_libs.sh
# Description: Automated script to remove all installed libraries on a Linux system.
# License: GPL-3.0 License (https://www.gnu.org/licenses/gpl-3.0.en.html)
# Developer: Brainhub24
# Contact: github@brainhub24.com
# GitHub Repository: https://github.com/Brainhub24/Remove-Librarys
# 
# This script was developed to provide a convenient way for developers and users
# to test their own written codes on a clean Linux environment. It can also be
# helpful for users experiencing unresolved issues with their Linux systems,
# allowing them to remove all installed libraries and start fresh.
# -----------------------------------------------------------------------------

# Get a list of all installed packages
packages=$(dpkg --list | grep '^ii' | awk '{ print $2 }')

# Remove each package
for package in $packages; do
    sudo apt-get remove --purge -y $package
done
