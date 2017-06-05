#!/bin/bash

# Show changes between commit and it's parent
if [ -z "$1" ]; then
  HASH="master"
else
  HASH="$1"
fi

git diff "$HASH"^ $HASH
