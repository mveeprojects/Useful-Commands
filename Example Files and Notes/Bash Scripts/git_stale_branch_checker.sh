#!/bin/bash
# modified version of https://www.geeksforgeeks.org/how-to-clean-old-remote-git-branches/#approach-2-automated-scripts

# Add this file to the repo you want to check and set it as executable if not already done (chmod +x git_stale_branch_checker.sh)
# Run using ./git_stale_branch_checker.sh

# Example output:
# Threshold date: Tue 1 Apr 2025 15:24:35 BST
# Branch datastax_only is stale, the most recent commit was made by mveeprojects on Mon 12 Jun 2023 18:54:01 BST
# Branch master is stale, the most recent commit was made by mveeprojects on Mon 28 Feb 2022 14:45:48 GMT

# Replaced git fetch with the below based on https://stackoverflow.com/a/10312587/3059314
# Ensures all remote branches are tracked locally, required in order to get the last commit information.
for remote in `git branch -r`; do git branch --track ${remote#origin/} $remote; done

# Get the current date minus 30 days
THRESHOLD_DATE=$(date -j -v-30d +%s)

echo "Threshold date: $(date -r $THRESHOLD_DATE)"

# Loop through remote branches
for branch in $(git branch -r | grep -v '\->'); do
    LAST_COMMIT_DATE=$(git log -1 --format=%ct "${branch#origin/}")
    LAST_COMMIT_AUTHOR=$(git log -1 --pretty=format:%an "${branch#origin/}")

    # Check if the branch is older than the threshold
    if [[ $LAST_COMMIT_DATE -lt $THRESHOLD_DATE ]]; then
             echo "Branch ${branch#origin/} is stale, the most recent commit was made by ${LAST_COMMIT_AUTHOR} on $(date -r $LAST_COMMIT_DATE)"
  fi
done
