#!/bin/bash

echo "Repository: [$GITHUB_REPOSITORY]"

GITHUB_TOKEN="$INPUT_GITHUB_TOKEN"

git config --system core.longpaths true
git config --global core.longpaths true
git config --global user.name "$INPUT_USERNAME"
git config --global user.email "$INPUT_EMAIL"

DESCRIPTION=`jq -r '.description' ${FILE_PATH}`
