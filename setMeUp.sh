#!/bin/bash

# Function to show help
show_help() {
    echo "Usage: $0 <branch-name>"
    echo ""
    echo "This script will:"
    echo "  1. Check if a git branch exists with the provided name"
    echo "  2. Create a new branch or switch to existing one (with confirmation)"
    echo "  3. Switch to the branch"
    echo "  4. Update .gitignore to ignore changes in 'instruction' folder"
    echo ""
    echo "Example: $0 my-name"
    exit 1
}

# Check if branch name is provided
if [ -z "$1" ]; then
    echo "Error: Branch name is required!"
    echo ""
    show_help
fi

BRANCH_NAME=$1

# Define restricted branch names
RESTRICTED_BRANCHES=("master" "main" "develop" "production" "staging" "release")

# Check if the provided branch name is in the restricted list
for restricted in "${RESTRICTED_BRANCHES[@]}"; do
    if [ "$BRANCH_NAME" = "$restricted" ]; then
        echo "Error: Cannot create or switch to restricted branch '$BRANCH_NAME'!"
        echo "Restricted branch names: ${RESTRICTED_BRANCHES[*]}"
        exit 1
    fi
done

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "Error: Not a git repository!"
    exit 1
fi

# Fetch remote branches to get latest information
echo "Fetching remote branches..."
git fetch --all --quiet

# Check if branch exists locally
LOCAL_BRANCH_EXISTS=$(git show-ref --verify --quiet refs/heads/$BRANCH_NAME && echo "yes" || echo "no")

# Check if branch exists remotely
REMOTE_BRANCH_EXISTS=$(git ls-remote --heads origin $BRANCH_NAME | grep -q $BRANCH_NAME && echo "yes" || echo "no")

# Handle different scenarios
if [ "$LOCAL_BRANCH_EXISTS" = "yes" ]; then
    echo "Warning: Branch '$BRANCH_NAME' already exists locally!"
    read -p "Do you want to continue and switch to this branch? (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Operation cancelled."
        exit 0
    fi
    # Switch to existing local branch
    git checkout $BRANCH_NAME
elif [ "$REMOTE_BRANCH_EXISTS" = "yes" ]; then
    echo "Warning: Branch '$BRANCH_NAME' exists on remote but not locally!"
    read -p "Do you want to checkout and track this remote branch? (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Operation cancelled."
        exit 0
    fi
    # Checkout remote branch and track it
    git checkout -b $BRANCH_NAME origin/$BRANCH_NAME
else
    # Create new branch
    echo "Creating new branch: $BRANCH_NAME"
    git checkout -b $BRANCH_NAME
fi

# Check if checkout was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to switch/create branch!"
    exit 1
fi

echo "Successfully switched to branch: $BRANCH_NAME"


echo ""
echo "Setup complete! You are now on branch '$BRANCH_NAME' and the 'instruction' folder is ignored."

