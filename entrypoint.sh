#!/bin/sh

# Debug: List contents of /files
echo "Contents of /files:"
ls -l /files

# Set the install directory
INSTALL_DIR="/files"

# Update the game server
steamcmd +force_install_dir $INSTALL_DIR +login anonymous +app_update $STEAM_APP_ID validate +quit

# Check the executable file
echo "Checking the executable file:"
ls -l $INSTALL_DIR/AceSquaredDedicated.x86_64

# Start the server
$INSTALL_DIR/AceSquaredDedicated.x86_64
