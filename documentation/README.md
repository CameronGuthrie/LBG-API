# Documentation 
## Source Control 
### Workflow 
* git add --all 
* git commit -m "" 
* git push 
### Download a repo 
* git clone URL 
### Initialise a local repo 
* git init 
### set a remote repo / associate with a local repo 
* git remote add origin URL 
### push for the first time
* git push -u RemoteName (origin) branchName 
### how to ignroe files
* .gitignore
### to copy a version of someone else repo to your account 
* fork 
### Branching 
* git branch branchName
### delete a branch 
* git branch -d branchName 
### Swap to a branch 
* git checkout branchName 
### Swap and Create a branch
* git checkout b branchName 
### Merging
* merge INTO your current branch 
* git merge branchName
### Undoing a cahnge
* git revert HEAD
### Rolling
* git reset --hard SHA1
### how to find the SHA1 of a commit
* git log --oneline