#!/bin/bash

# Function to back up text files
move_party() {
    mkdir -p Backup
    cp *.txt ./Backup
    ls ./Backup
}

# Navigate to the script's directory from devops-learning
cd bash/Arena

# Execute function
move_party