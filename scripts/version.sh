#!/usr/bin/env bash

git config --local user.email "LernaPublishBot@actions.com"
git config --local user.name "Lerna Publish Bot"

lerna version patch --yes --no-push

git remote -vv

# TODO push changes and tags by using GITHUB_TOKEN
if [ -z "$GITHUB_TOKEN" ]; then
  echo "GITHUB_TOKEN not found. Did you forget to assign the GitHub Action secret?"
  exit 1
fi