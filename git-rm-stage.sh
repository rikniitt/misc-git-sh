#!/bin/bash

# git rm all deleted files reported by git status.
git rm `git status | grep deleted | awk '{print $3}'`
