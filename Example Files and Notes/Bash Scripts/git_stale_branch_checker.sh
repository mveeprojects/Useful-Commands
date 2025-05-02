#!/bin/bash
# modified version of https://www.geeksforgeeks.org/how-to-clean-old-remote-git-branches/#approach-2-automated-scripts

# Add this file to the repo you want to check and set it as executable if not already done (chmod +x git_stale_branch_checker.sh)
# Run using ./git_stale_branch_checker.sh

# Replaced git fetch with the below based on https://stackoverflow.com/a/10312587/3059314
# Ensures all remote branches are tracked locally, required in order to get the last commit information.
for remote in `git branch -r`; do git branch --track ${remote#origin/} $remote; done

# Get the current date minus 30 days
THRESHOLD_DATE=$(date -j -v-30d +%s)

echo "Threshold date: $(date -r $THRESHOLD_DATE)"

arr=()

for branch in $(git branch -r | grep -v '\->'); do
    LAST_COMMIT_DATE=$(git log -1 --format=%ct "${branch#origin/}")
    LAST_COMMIT_AUTHOR=$(git log -1 --pretty=format:%an "${branch#origin/}")

    if [[ $LAST_COMMIT_DATE -lt $THRESHOLD_DATE ]]; then
             arr+=("$LAST_COMMIT_AUTHOR last committed a change to $branch on $(date -r $LAST_COMMIT_DATE)")
  fi
done

for message in "${arr[@]}"; do
    echo "$message"
done | sort
