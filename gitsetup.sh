# Setup git to use main as default branch instead of master
git config --global init.defaultBranch main

# Create a command to pull and recursively update all the submodules
git config --global alias.pullr '!git pull --recurse && git sm'

# Create a command add all and auto-commit (does not add new files)
git config --global alias.com 'commit -a -m'

# Recursively checkout submodules to along with the main repo (equivalent to running git submodule update after git checkout)
git config --global alias.co '!f(){ git checkout --recurse-submodule "$@" && git sm; }; f'

# Create a command to easily populate and update all submodules recursively
git config --global alias.sm 'submodule update --init --recursive'

# Adds a 'git unstage' command to remove a file from staging
git config --global alias.unstage 'reset HEAD --'

# Adds a git command which lists the current commit of all sub-modules
git config --global alias.sb "submodule foreach 'git log -n1 --decorate=short'"

# Adds a git command which enables you to show all available git aliases
git config --global alias.alias 'config --get-regexp ^alias'
