# Python for Kids

## Get your system ready
1. Install Python from [python.org](https://www.python.org/downloads/).
2. Download and install a code editor like [Visual Studio Code](https://code.visualstudio.com/).

## Helpful `git` commands

An adult should help with the git commands if needed.

### Catching up your local repo with the main branch
* `git fetch`
* `git rebase origin/main`

### Commiting your changes
* One of
  * `git add .` - stages all changed files
  * `git add <file>` - stages a specific file
* `git commit -m "Your commit message"` - commits staged changes with a message

### Pushing your changes
* One of
  * `git push --force-with-lease` - saved forced push. Use this since your branches are always rebased.
  * `git push` - pushes your commits to the currently checked out branch
  * `git push origin <branch-name>` - pushes your commits to the remote branch
