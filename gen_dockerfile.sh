#!/bin/bash

# pre-push hookk in .git/hooks
# generate dockerfile between two tags

remote_tag=$(git ls-remote --tags origin|tail -1)
local_tag=$(git tag|tail -1)

git diff $remote_tag $local_tag --name-only

