#!/bin/bash
# a shell script to create and push to github

B=`basename ${PWD}`
# Create the remote repository on GitHub
curl -u "${GITHUB_USERNAME}:${GITHUB_PAT}" https://api.github.com/user/repos -d "{\"name\":\"${B}\"}"

# Add the remote repository as origin
git remote add origin git@github.com:${GITHUB_USERNAME}/${B}.git

# Push to the remote repository
git push -u origin master
