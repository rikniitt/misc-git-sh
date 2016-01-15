#!/bin/bash

git merge --no-commit --no-ff $1 || exit

echo
echo " ### Undo merge with: git merge --abort"
echo
