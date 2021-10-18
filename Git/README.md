<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/Grindewald1900/Notebook">
    <img src="https://res.cloudinary.com/practicaldev/image/fetch/s--3GWZPuoM--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://thepracticaldev.s3.amazonaws.com/i/fk0849hvg2rt13bpqhjy.jpg" width="720" height="280">
  </a>

  <h3 align="center">Github</h3>

  <p align="center">
    A notebook about Git and Github
    <br />
  </p>
</p>

<p align="center">
    <a href="https://github.com/Grindewald1900/Notebook/graphs/contributors" alt="Contributors">
        <img src="https://img.shields.io/github/contributors/Grindewald1900/Notebook" /></a>
    <a href="https://github.com/Grindewald1900/Notebook/pulse" alt="Activity">
        <img src="https://img.shields.io/github/commit-activity/m/Grindewald1900/Notebook" /></a>
    <a href="https://circleci.com/gh/Grindewald1900/Notebook/tree/master">
        <img src="https://img.shields.io/circleci/project/github/Grindewald1900/Notebook/master" alt="build status"></a>
    <a href="https://coveralls.io/github/Grindewald1900/Notebook">
        <img src="https://img.shields.io/coveralls/github/Grindewald1900/Notebook"
            alt="coverage"></a>
    <a href="https://github.com/Grindewald1900/Notebook/blob/master/LICENSE.txt">
        <img src="https://img.shields.io/badge/license-MIT-green"
            /></a>
    <a href="https://www.linkedin.com/in/yee-ren-8b63a21a2/">
        <img src="https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555"
            /></a>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents
*   [Initialize project](#Initialize)





<!-- ABOUT THE PROJECT -->
<a name=""></a>
## About The Project
Some basic commands about git.

## Prerequisite
 - git
 - git bash
 
<!-- GETTING STARTED -->
<a name="Initialize"></a>
### Initialize project
#### In your project `root` folder:  

#### Initialize your local repo
```Bash
git init
```
#### Add all local changes to commit range(the selected files will be commited later)
```Bash
git add .
```
#### Commit your changes to local repo
```Bash
git commit -m ‘<your comment here>’
```
#### Add a alias to remote repo
```Bash
git remote add origin <Your remote repo link>
```

#### Push local commit to remote repo, branch 'origin'
```Bash
git push -u origin master
```

#### If there's issue when you run `push` command, it could be a conflict between local and remote repo, so pull and rebase the remote branch
```Bash
git pull --rebase origin master
```

#### Then push again
```Bash
git push -u origin master
```

### Other command
#### This command sets the author name and email address respectively to be used with your commits.
```Bash
git config –global user.name “[name]”  
```
#### This command is used to obtain a repository from an existing URL.
```Bash
git clone [url]  
```

#### This command shows the file differences which are not yet staged.
```Bash
git diff
```

#### This command unstages the file, but it preserves the file contents.
```Bash
git reset [file]  
```

#### This command undoes all the commits after the specified commit and preserves the changes locally.
```Bash
git reset [commit]  
```

#### This command lists all the files that have to be committed.
```Bash
git status
```

#### This command deletes the file from your working directory and stages the deletion.
```Bash
git rm [file]  
```

#### This command is used to list the version history for the current branch.
```Bash
git log  
```

#### This command shows the metadata and content changes of the specified commit.
```Bash
git show [commit] 
```

#### This command is used to give tags to the specified commit.
```Bash
git tag [commitID]  
```

#### This command lists all the local branches in the current repository.
```Bash
git branch  
```

#### This command is used to switch from one branch to another.
```Bash
git checkout [branch name]  
```

#### This command merges the specified branch’s history into the current branch.
```Bash
git merge [branch name]  
```

#### This command is used to connect your local repository to the remote server.
```Bash
git remote add [variable name] [Remote Server Link]  
```

#### This command fetches and merges changes on the remote server to your working directory.
```Bash
git pull [Repository Link]  
```

#### This command temporarily stores all the modified tracked files.
```Bash
git stash save  
```

#### This command restores the most recently stashed files.
```Bash
git stash pop  
```


####
```Bash

```

