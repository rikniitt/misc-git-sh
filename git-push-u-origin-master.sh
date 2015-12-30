#!/bin/bash

# Set up tracking origin master branch,
# where git push -u origin master isn't option.

git config --add branch.master.remote origin
git config --add branch.master.merge refs/heads/master
git push origin master
