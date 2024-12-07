# Use the SteamCMD base image with Ubuntu 22 as the foundation
FROM steamcmd/steamcmd:ubuntu-22

# Set the user for the container runtime (defaulting to root for simplicity)
ENV USER root

# Define the working directory for commands executed in the container
WORKDIR $HOME

# Set the Steam application ID and installation directory as environment variables
# STEAM_APP_ID: The specific ID of the app or game to manage with SteamCMD
# STEAM_INSTALL_DIR: The directory where the app/game will be installed
ENV STEAM_APP_ID 3252540
ENV STEAM_INSTALL_DIR /files

# Run SteamCMD initially to ensure it's properly set up
RUN steamcmd +quit

# Expose the installation directory as a volume
# This allows data to persist outside the container lifecycle
VOLUME ["/files"]

# Copy the custom entrypoint script into the container and make it executable
# The entrypoint script is responsible for handling app installation and runtime logic
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Debugging: List and verify the entrypoint script to ensure it was copied successfully
RUN ls -l /usr/local/bin/entrypoint.sh
RUN cat /usr/local/bin/entrypoint.sh

# Set the entrypoint to the custom script
# This script will be executed when the container starts
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Default CMD is left empty, allowing flexibility for additional commands or overrides
CMD []
