#!/bin/bash

# Git delete tag both local and remote (origin).

TAG=$1

git tag -d $TAG
git push origin :refs/tags/$TAG
