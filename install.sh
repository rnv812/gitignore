#!/bin/bash

TEMPLATES_DIR="/home/${USER}/.gitignore_templates/"
SCRIPT_DIR="/home/${USER}/.local/bin/"

echo "Copying templates to ${TEMPLATES_DIR}"
chmod +x gitignore.sh
mkdir -p $TEMPLATES_DIR
cp "$( pwd )/templates"/* $TEMPLATES_DIR

echo "Copying script to ${SCRIPT_DIR}"
mkdir -p "/home/${USER}/.local/bin/"
cp "$( pwd )/gitignore.sh" "${SCRIPT_DIR}/gitignore"

echo "Adding autocompletion for the command"
sudo cp "$( pwd )/gitignore-completion.sh" "/etc/bash_completion.d/gitignore-completion"

echo "Done. Please restart shell session."