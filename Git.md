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

### Squash and merge branch in current branch
```shell
git merge --squash <branch-to-squash-and-merge>
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

### Create new tag
```shell
git tag <new_tag> <old_tag>
```

### Push new tag
```shell
git push origin <new_tag>
```
