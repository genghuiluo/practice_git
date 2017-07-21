#!/bin/bash

# pre-push hookk in .git/hooks
# generate dockerfile between two tags

remote_tag=$1
local_tag=$(git tag|tail -1)

echo  $remote_tag
echo  $local_tag

git diff $remote_tag $local_tag --name-only

