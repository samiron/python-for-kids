# Python for Kids

## Get your system ready
1. Install Python from [python.org](https://www.python.org/downloads/).
2. Download and install a code editor like [Visual Studio Code](https://code.visualstudio.com/).
3. Install Git from [git-scm.com](https://git-scm.com/downloads

## First time setup
Instructor's supervision is required for the first time setup.

1. Open your terminal (Command Prompt, PowerShell, or Terminal).
2. Configure your Git username and email:
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "Your email"
   ```
3. Run the following commands
   ```bash
   # Clone the repository
   git clone git@github.com:samiron/python-for-kids.git
   
    # Change directory into the project folder
   cd python-for-kids
   
   
   #
   ```
4. Navigate into the project directory:
   ```bash
   
   ```

## How to follow along
1. Clone this repository to your local machine.
2. Check the bra

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
