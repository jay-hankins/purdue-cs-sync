# purdue-cs-sync
OS X Script for pushing local files to Purdue CS servers

## Features
* Automatically rsync files from your local Mac to the remote CS servers.
* Displays notification and sound on each successful push.

## Dependencies
* [fswatch](https://github.com/emcrisostomo/fswatch) - `$ brew install fswatch`

## Installation
1. Clone this repo.
2. Modify syncCS.sh and update it with your career account information, preferred file locations, and preferred server if desired.
  * Note: This script assumes that you store your CS projects on the Purdue servers in location `/homes/<career account name>/cs/cs252/<project name>`, and work in a local folder named `<project name>`.  Update the location as appropriate for your setup.
  
3. Add a handy alias to your shell configuration:

  `alias watcher="fswatch -0 . | xargs -0 -n1 /Users/jay/syncCS.sh"`
  
## Usage
1. Navigate to your local project folder (e.g. `/Users/jay/dev/CS/lab3-src').
2. Execute alias 'watcher' inside that project folder.
3. That's it. The script will rsync your files when any change in the directory is detected.
