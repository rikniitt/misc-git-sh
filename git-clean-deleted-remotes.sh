#!/bin/bash

# Clean up local tags and remotes, which are no longer on remote

# Delete local "remotes" which are deleted
git fetch --prune

# First delete all tags "locally"
git tag | xargs git tag --delete
# Then fetch them again.
git fetch --tags

