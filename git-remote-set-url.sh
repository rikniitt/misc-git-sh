#!/bin/bash

# Git rename/set-url of remote,
# where git version doesn't support
# git remote set-url origin ssh://what.eva

REMOTE=$1
URI=$2

git remote add temporaryRemote $URI
git remote rm $REMOTE
git remote rename temporaryRemote $REMOTE
