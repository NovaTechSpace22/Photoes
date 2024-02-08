#!/bin/bash

# Replace this with your file's relative path in the repository
filePath="https://github.com/NovaTechSpace22/Photoes/blob/master/4fe101f0-3d4d-46f3-ab76-3cfd676c74b6.webp"

# Extract information from git config
repoUrl=$(git config --get remote.origin.url)
branchName=$(git rev-parse --abbrev-ref HEAD)

# Construct the raw GitHub URL
rawUrl=$(echo $repoUrl | sed -e 's/https:\/\/github.com/https:\/\/raw.githubusercontent.com/' -e "s/\.git$/\/$branchName\/$filePath/")

echo $rawUrl
