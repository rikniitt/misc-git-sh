#!/bin/bash

# There is no interactive merge, but simulate
# something like that with generating new
# temporary branch form current branch.
# Merge without fast-forward and commit
# the desired branch $1 to it. Reset
# the changes made by merge and start to
# add the changes interactively

temp_branch="temp_"$( date +'%Y%m%d_%H%M%S' )
git checkout -b $temp_branch || exit
git merge --no-commit --no-ff $1

if [ "$?" != "0" ]; then
  echo "##  Conflicts. Won't reset HEAD."
  echo "##    Use 'git merge --abort' to undo merge"
  exit 1
fi

git reset HEAD
git add -i
