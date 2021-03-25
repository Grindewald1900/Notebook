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

<!-- GETTING STARTED -->
<a name="Initialize"></a>
## Initialize project
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

