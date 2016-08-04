#!/bin/bash

# git update index and assume unchanged all files recurssive in current dir.
git update-index --assume-unchanged $( git ls-files | tr '\n' ' ' )
