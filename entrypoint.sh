#!/bin/sh

# Debug: List contents of /files
echo "Contents of /files:"
ls -l /files

# Debug: Check if the executable exists
if [ -f /files/AceSquaredDedicated.x86_64 ]; then
  echo "Executable found: /files/AceSquaredDedicated.x86_64"
else
  echo "Executable not found: /files/AceSquaredDedicated.x86_64"
  exit 1
fi

# Run the SteamCMD command and the executable
steamcmd +force_install_dir /files +login anonymous +app_update $STEAM_APP_ID validate +quit && ./files/AceSquaredDedicated.x86_64