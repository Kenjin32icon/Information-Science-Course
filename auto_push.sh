#!/bin/bash

# Navigate to the repository directory
cd /path/to/your/repository  # Replace with the actual path

# Add changes to git
git add .

# Commit changes with a timestamp
git commit -m "Automated commit on $(date)"

# Push changes to the remote repository
git push origin main  # Change 'main' to 'master' if that's your branch name
