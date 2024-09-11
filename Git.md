# Git/GitHub

### GitHub link to particular lines of file
https://github.com/mveeprojects/Useful-Commands/blob/master/Git.md#L1-L2

### Commit changes locally
```shell
git commit -a -m "Commit message goes here"
```

### View remote endpoint of repo (determine if ssh or https)
```shell
git remote -v
```

### Set remote to https
```shell
git remote set-url origin https://github.com:MarkVee87/springBoot_StartingPoint.git
```

### Set remote to ssh
```shell
git remote set-url origin git@github.com:MarkVee87/springBoot_StartingPoint.git
```

### Rename branch locally (when on branch)
```shell
git branch -m new-name
```

### Rename branch locally (when on different branch)
```shell
git branch -m old-name new-name
```

### Push newly named branch
```shell
git push origin -u new-name
```

### Delete old remote branch and push newly renamed branch
```shell
git push origin :old-name new-name
```

### Delete branch from remote
```shell
git push origin --delete feature/login
```

### Update all repos inside current dir
```shell
find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;
```

### In the case that, as a result of changing the branch name, can no longer push/pull from origin do this:
```shell
git branch --unset-upstream
git push --set-upstream origin <new branch name>
git pull
```

### Duplicate repo without forking
```shell
git clone --bare https://github.com/exampleuser/old-repository.git
cd old-repository.git
git push --mirror https://github.com/exampleuser/new-repository.git
```

### Stash all including untracked
```shell
git stash --all
```

### Reset to head
```shell
git reset --hard HEAD
```

### View all tags
```shell
git tag
```

### Add new tag (git tag new old)
```shell
git tag myapp-1.0.1 myapp-1.0.0
```

### Push new tag
```shell
git push origin myapp-1.0.1
```

## Squsshing commits

https://www.git-tower.com/learn/git/faq/git-squash

### Interactive Rebase
```shell
git log (figure out how many of the most recent commmits you want to squash together)
git rebase -i HEAD~<number of commits to squash together>
[vi terminal opens, i to edit]
keep the latest commit as pick xyz.
change all others from pick xyz to squash xyz.
[close and save with esc then :wq]
[another vi terminal opens, i to edit]
Amend the commit message as you need.
[close and save with esc then :wq]
```

### Merge
```shell
git merge --squash <branch_name>
```

### Amend most recent commit
```shell
# Adds all unstaged files and then amends latest commit with them.
git commit -a --amend
```

### View repo metadata (public repos only)
```shell
curl https://api.github.com/repos/mveeprojects/Useful-Commands
```

### Script to modify the origin of all repos in current and sub-directories
```shell
#/bin/bash
SEARCH_ROOT=./
PATTERN=com:someorgname
REPLACEMENT=com:someotherorgname
find "$SEARCH_ROOT" -type d -name "\.git"  -print | while read -r REPO;
do
  pushd "$REPO/../" > /dev/null || continue
  NEWURL=$(git remote get-url origin | grep "$PATTERN" | sed "s/$PATTERN/$REPLACEMENT/g")
  echo $NEWURL
  [ -z "$NEWURL" ] || git remote set-url origin "$NEWURL"
  popd > /dev/null || exit 1
done
```
