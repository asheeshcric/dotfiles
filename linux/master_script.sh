#!/bin/bash

# Run all the installation scripts from this master script

echo "--- Running zsh installation script ---"
source installation_scripts/zsh_installation.sh
echo "--- Zsh installation script completed! ---"

echo "--- Run linux setup script ---"
source installation_scripts/my_linux_setup.sh
echo "--- Linux setup script completed! ---"