#!/bin/sh

# Illustrator default template folder:
INSTALL_DIR="$(cd ~/Library/Application\ Support/Adobe/Adobe\ Illustrator\ */en_US/New\ Document\ Profiles/; pwd)/@mhulse/";

# Remote repo zip file containing all templates:
SOURCE_ZIP="https://github.com/mhulse/illy-profiles/tarball/master";

# Clean previous installs:
#rm -rf "$INSTALL_DIR";

# Create installation folder:
mkdir -pv "$INSTALL_DIR";

# Get the zip file and extract all template files:
curl -sS -#L "$SOURCE_ZIP" | tar -xzv --strip-components 1 -C "$INSTALL_DIR" "*.ai";

# Done!
# For more information about this script, see:
# https://github.com/mhulse/illy-profiles
