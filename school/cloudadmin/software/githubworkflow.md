

# GitHub Workflow

- [GitHub Workflow](#github-workflow)
  - [Quickstart Guide](#quickstart-guide)
      - [Step 1) Account Setup:](#step-1-account-setup)
      - [Step 2) Select Type of Project:](#step-2-select-type-of-project)
  - [Setup Git Account](#setup-git-account)
  - [Starting a New Project](#starting-a-new-project)
  - [Check All Available Branches](#check-all-available-branches)
  - [Continue Working](#continue-working)
  - [Continue Work](#continue-work)
  - [Common Tasks](#common-tasks)
  - [Commit Comment Style](#commit-comment-style)
  - [Example](#example)
  - [Issue Numbers](#issue-numbers)
  - [Example](#example-1)
  - [Frequency](#frequency)
  - [\<\<\<\<\<\<head](#head)
  - [========](#)
  - [\>\>\>\>\>\>branchname](#branchname)
  - [Title](#title)
  - [Description](#description)
  - [Getting Started Guide](#getting-started-guide)
  - [Compatibility](#compatibility)
  - [Target Browsers](#target-browsers)
  - [Screen Size Compatibility Chart](#screen-size-compatibility-chart)
  - [Authors](#authors)
  - [Jane Doejdoejdoe@example.com](#jane-doejdoejdoeexamplecom)
  - [License](#license)
  - [Acknowledgement](#acknowledgement)
  - [Git Commands](#git-commands)
  - [More](#more)
  - [Detail](#detail)
  - [More](#more-1)
  - [Detail](#detail-1)
  - [Terminal Commands](#terminal-commands)
  - [FAQ](#faq)
  - [Branch?](#branch)
  - [Command](#command)
  - [Name](#name)
  - [Purpose](#purpose)
  - [--amend](#--amend)
  - [Glossary](#glossary)
  - [Development Branch](#development-branch)
  - [Git](#git)
  - [Purpose](#purpose-1)
  - [Structure](#structure)
  - [Working Directory](#working-directory)
  - [Staging](#staging)
  - [Repository](#repository)
  - [Issues](#issues)
  - [Milestones](#milestones)
  - [Working Directory](#working-directory-1)
  - [Staging](#staging-1)
  - [Repository](#repository-1)
  - [Commits](#commits)
  - [Detailed Git Commands](#detailed-git-commands)


This document was developed to help teach a GitHub workflow that can help keep the different stages
of software development separate.
All projects should have a production branch (main) and a development branch (Development)
When a new feature is needed on a project the developer should branch off the development branch
All work is completed in the feature branch until the work is ready to be merged with development
When the feature is ready to be merged into development, first merge the latest copy of the
development branch into the feature branch
This may result in conflicts on the feature branch
Once all conflicts have been resolved, the feature branch can be put onto GitHub and a pull request
can be made
All pull requests into the development branch will then be fast-forward merges and will allow in turn for
fast-forward merges into production
## Quickstart Guide
#### Step 1) Account Setup:
Please note that this step only needs to be completed on the school computers. This is because the
machines will re-image every night. If Git has already been correctly configured on the workstation
skip this step.

[Setup Guide Here](#setup-git-account)

#### Step 2) Select Type of Project:
After the account has been configured, select one of the two following options:
Work on existing project

Start new project

## Setup Git Account
Global Configuration of Git
The following commands configure the logged in computer account to always use the provided Git account:

```bash

username@workstationname:~$ git config --global user.name “John Doe”
username@workstationname:~$ git config --global user.email jdoe@example.com
username@workstationname:~$ git config --global core.editor nano
username@workstationname:~$ git config --global init.defaultBranch main

```
*Note: vim is a more common text editor that will be on most machines*


## Starting a New Project
The following is a guide that should be used when trying to create a new Git/GitHub project
Note: The following commands assume they are being run in the root of the project
1) Begin Starting a New Project by Creating the Repository
username@workstationname:~$ git init
2) Build a .gitignore file
username@workstationname:~$ touch .gitignore
username@workstationname:~$ nano .gitignore"
Add the appropriate content to your file and save
Note that you can find some great examples of gitignore files:

Prefabicated gitignore
Generate one
3) Perform an Initial Commit for the main Branch
username@workstationname:~$ git add .
username@workstationname:~$ git commit -m "Initial Commit"
3) Create a Development Branch
username@workstationname:~$ git branch development
4) Add the GitHub Remote Server
username@workstationname:~$ git remote add origin repolink
5) Upload the main Branch
username@workstationname:~$ git push -u origin main
6) Upload the Development Branch
username@workstationname:~$ git checkout development
username@workstationname:~$ git push -u origin development
Continue an Existing Project
Clone a Project
Download or Clone the Project from the Repository
username@workstationname:~$ cd directoryYouWantToStoreProject
username@workstationname:~$ git clone repositoryLinkHere
Note: GitHub account login may be required for this to work
## Check All Available Branches
username@workstationname:~$ git branch -a
Choose between working on one of the following:
## Continue Working

Extending a project
## Continue Work
Use this guide as a guide for continuing work on a project
1) Checkout the feature branch
username@workstationname:~$ git checkout feature
2) Update the branch
username@workstationname:~$ git pull
Continue with development on the project following the proper commit style and the correct merging
pattern
Extending a Project
Use this section as a guide for adding features or code to a project
1) Start by Moving to the Development Branch:
username@workstationname:~$ git checkout development
2) Ensure the Branch is up to Date With GitHub:
username@workstationname:~$ git pull
3) Create and Checkout a New Branch
username@workstationname:~$ git checkout -b newBranchName
Continue with development on the project following the proper commit style and the correct merging
pattern
## Common Tasks
## Commit Comment Style
Proper Format and Form:
Start with a Subject Line:

Should start with issue or ticket number
50-character max
Followed by a Body Message on a New Line:
Text wrap at 72 characters
Bullet points
Subject Lines Should be able to Finish this Sentence:
If applied, this commit will ...
## Example
git commit -m "Refactor image locations
- Move images into ./images directory
- Correct all references to images"
Commit comment format and form is derived from here
## Issue Numbers
If the commit is resolving a ticket/issue number, then mention that number in the commit message.
## Example
git commit -m "#127 Refactor image locations
- Move images into ./images directory
- Correct all references to images"
## Frequency
Commits should be performed as often as possible (Within reason)
Commits allow for snapshots to be reverted if a development path did not go as planned.
Every line of code does not need to be a commit
How to Properly Merge
The following instructions should be followed when you are ready for your code to be added to the
development branch:
1) Switch to development and ensure it is up to date
username@workstationname:~$ git checkout development

username@workstationname:~$ git pull
2) Switch to the feature branch where the work was completed
username@workstationname:~$ git checkout feature
3) Merge development into the feature branch
username@workstationname:~$ git merge development
Note: this may cause a merge conflict
4) Fix any issues that are in the project indicated by the following
## <<<<<<head
## ========
## >>>>>>branchname
5) Once all issues are fixed, perform another commit
username@workstationname:~$ git add .
username@workstationname:~$ git commit -m "message here"
6) Repeat steps 1 - 5 until Git gives the message 'all up to date'
When everything is up to date, and there are no longer any issues, the code is ready to make it's way
into the development branch.
Perform a pull request through GitHub
7) Confirm the feature branch is checked out
username@workstationname:~$ git branch -a
and if needed
username@workstationname:~$ git checkout feature
8) Push the feature branch to GitHub
username@workstationname:~$ git push origin feature
Note: this assumes that the remote server is named origin
9) Perform a pull request

How to Build a README
## Title
The title of the project should be professional and clearly explain the project.
Should be at the beginning of the README
## Description
The project description should accurately describe the project
## Getting Started Guide
The getting started guide can sometimes blend with the project description
Outline all the things an engineer might need to get started using the project
Try to include as many illustrations as possible to aid in this guide.
The best form of illustration are animated gif's that can showcase certain functionality.
Also include any prerequisite technology stack needed to get started with this project
If you have a database, include a diagram of the schema of the overall database design.
## Compatibility
Target OS's
## Target Browsers
Target API Levels
Target Platforms/Market Places
## Screen Size Compatibility Chart
Web Browser Compatibility Chart (Versions and Types)
Device Compatibility Chart (What devices has this been tested on)
## Authors
Table format
A column for names
A column for links to GitHub accounts
A column for contact email

NameAccountEmailNameAccountEmail
## Jane Doejdoejdoe@example.com
## License
License the project
Which license chosen will be dependent on the requirements of the project and personal
preference.
Even if it is desired to retain the full copyright for the work have it stated
Choose a license here
## Acknowledgement
This would be anything from the following:
Testers for the code
Testers for the application
People who may have helped but did not necessarily contribute code
Please be sure to ask the person before giving them an acknowledgement
## Git Commands
NamePurposeDetailed
git initCreate a new git project
## More
## Detail
git addAdd files to staging
git statusCheck the status of files
git commitCommit files in the staging area
git branch -aList all branches including on the remote
git checkoutSwitch to a new branch
git checkout ‑bSwitch to a new branch and create it if it does not exist
git stash
Save current changes in a temporary staging area. Usually used to
correct for being on the wrong branch.

NamePurposeDetailed
git logView the git logs
## More
## Detail
git log ‑‑author  View log entries filtered by author
git log ‑‑sinceView log entries after the given date
git log ‑‑untilView log entries before the given date
git log -n 1View log entries limited to a given number of entries
## Terminal Commands
NamePurpose
cdChange directory
lsList out all files and directories
pwdOutput the present working directory
catOutput the contents of a file to standard output or concatenate files
cpCopy a file or folder
rmRemove a file or folder
grepFilter based on pattern matching
mvMove files or folders
manManual for any command
touchCreate a file
moreRead the contents of a file
lessRead the contents of a file (allowing for paging both directions)
mkdirMake a directory
historyList the previously typed commands
## FAQ

What to Do When Development Was Started on the Wrong
## Branch?
Command NamePurpose
git stashused to save uncommitted work
git stack apply (optional id)Used to apply the latest stashed work or the one listed
git stash listused to show the list of stashes
git stash drop idused to remove a stash
How to Unstage Files?
Command NamePurpose
git reset (filename)removes a file from staging keeping the changes
How to Fix Commit Messages?
## Command
## Name
## Purpose
git commit
## --amend
This will undo a commit and allow you to alter its message. Note this is not altering
a commit but replacing the commit that was there.
How to Avoid Tracking Files?
Command NamePurpose
git rm (filename)remove and untracked a file
git rm (filename)untrack a file but keep it
Who Broke Content in a Particular File?
Command NamePurpose
git blame (filename)List change dates of a file and the author who made them

## Glossary
main Branch
This branch should be treated as client facing and should always be conflict free
## Development Branch
This branch should be treated as the main development branch and should always be conflict free
This branch is kept conflict free because it allows any developer to join the team at any time
## Git
Git is a local piece of software installed on your computer that is accessed from the command line.
## Purpose
Keep track of changes in files and directories.
Compare different versions of files and directories
Move back and forth between versions
See changes that were made in specific versions
Allow for work to be credited to the correct contributor
Git is like a "save" feature on a game. Allowing us to have a history of how we progress through a
project
These save files are stored in what is known as a Git repository
## Structure
Git is broken into 3 main areas:
## Working Directory
## Staging
## Repository
GitHub

GitHub is a website that is used to store Git Repositories. The primary purpose of GitHub is to:
Allow for online/group collaboration on projects
Manage and maintain a proper workflow including the separation of a development and
production work environment
Keep track of the progress on any project
Allow for flagging and tagging of issues, bugs, feature requests and much more
Allow for administrative control as to what gets included into a project
Allows for a landing page/public project description
## Issues
Issues are the milestones broken down to the smallest level
Issue are live documentation for the different small tasks needed for a milestone to be complete.
Issues can also be created for bugs, feature requests as well as other things.
Not all issues will be mapped to a milestone but all milestones will be mapped to issues.
## Milestones
Milestones are used to keep the project organized and completed on time.
This is the GitHub equivalent of a Gantt chart
Milestones should outline all the tasks in the project
Milestones are a basis for the issues
The issues are the smaller tasks that break down the milestones
Milestones should be detailed and specific
## Working Directory
This is the directory where the project is located.
This is always the live project
Git compares the most recent commit (snapshot) in the repository to determine what has changed
in the working directory.
To view the changes between the snapshot and working directory you would use the git status
command.
## Staging

Staging is a temporary location used to store copies of files that have changed
Any file that is in your working directory that has been updated can be added to staging.
Adding files to staging is a clean way of formulating a commit.
Git can selectively add single files or all files that have changed into staging
## Repository
Once staging is full of all the files you want to update, you will perform a commit.
Commits will automatically empty staging and place the updated files inside of your repository as
a new commit/snapshot.
The repository is your timeline of commits.
This is where all the different version of your files are stored
## Commits
Commits are snapshots of your code that you as the programmer take.
Think of the way a game can have multiple save files. A commit is a "save file" of your project
The difference being you can selectively choose which files you want to be part of the "save file".
## Detailed Git Commands
Git init
The git init command is used to initialize a new Git repository inside of the current directory.
This command created a folder inside of your project named “.git”.
This directory is used to track all the changes that will occur to your project. This is also where
project level configurations are stored.
Git log
The git log command is used to see the history of commits.
This will show:
Message text
author
timestamp

commit SHA
They will typically be listed from newest to oldest commit.