#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Error: Template name expected"
  exit 1
fi


TEMPLATE="/home/${USER}/.gitignore_templates/$1.gitignore"
DESTINATION="${PWD}/.gitignore"

cp $TEMPLATE $DESTINATION
