#!/bin/sh

# Debug: List contents of /files
echo "Contents of /files:"
ls -l /files

# Set the install directory
INSTALL_DIR="/files"

# Update the game server
# steamcmd +force_install_dir $INSTALL_DIR +login anonymous +app_update $STEAM_APP_ID validate +quit

# Verificar o arquivo
echo "Verificando o arquivo executável:"
ls -l $INSTALL_DIR/AceSquaredDedicated.x86_64

# Verificar dependências
# echo "Verificando dependências:"
# ldd $INSTALL_DIR/AceSquaredDedicated.x86_64

cd $INSTALL_DIR
# Start the server
./AceSquaredDedicated.x86_64