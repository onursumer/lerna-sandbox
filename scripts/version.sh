#!/usr/bin/env bash

if [ -z "$GITHUB_TOKEN" ]; then
  echo "GITHUB_TOKEN not found. Did you forget to assign the GitHub Action secret?"
  exit 1
fi

git config --local user.email "LernaPublishBot@actions.com"
git config --local user.name "Lerna Publish Bot"
git config --global github.token $GITHUB_TOKEN

# git fetch --tags

lerna version patch --yes --no-push
