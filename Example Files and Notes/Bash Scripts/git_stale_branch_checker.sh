#!/bin/bash
# modified version of https://www.geeksforgeeks.org/how-to-clean-old-remote-git-branches/#approach-2-automated-scripts

# Add this file to the repo you want to check and set it as executable if not already done (chmod +x git_stale_branch_checker.sh)
# Run using ./git_stale_branch_checker.sh

# Outputs a list of branches that have not been updated in the last 30 days, sorted by author in the format:
# <author> last committed a change to <branch_name> on <human_readable_date>

# Example output:
# Fetching all remote branches...
# Checking for branches with no commits since Mon Oct 23 12:00:00 EDT 2023...
# John last committed a change to origin/feature/old-feature3 on Mon Sep 25 12:00:00 EDT 2023
# Sally last committed a change to origin/feature/old-feature2 on Mon Sep 25 12:00:00 EDT 2023
# Sally last committed a change to origin/feature/old-feature1 on Mon Sep 25 12:00:00 EDT 2023

# Replaced git fetch with the below based on https://stackoverflow.com/a/10312587/3059314
# Ensures all remote branches are tracked locally, required in order to get the last commit information.
# Added "&> /dev/null" to direct output of git command to dev/null.
echo "Fetching all remote branches..."
for remote in `git branch -r`; do git branch --track ${remote#origin/} $remote &> /dev/null; done

# Get the current date minus 30 days
THRESHOLD_DATE=$(date -j -v-30d +%s)

arr=()

echo "Checking for branches with no commits since $(date -r $THRESHOLD_DATE)..."
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
