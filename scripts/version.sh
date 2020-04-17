#!/usr/bin/env bash

# on a GitHub action patch the version, push changes and tags
if [[ "$GITHUB_RUN_ID" ]]; then
  git config --local user.email "LernaPublishBot@actions.com"
  git config --local user.name "Lerna Publish Bot"
  # git config --global github.token $GITHUB_TOKEN
  git remote -vv
  echo $GITHUB_REPOSITORY
  echo $GITHUB_ACTOR
  # git remote set-url origin https://cbioportal-devops:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git

  # lerna version patch --no-commit-hooks --yes
else
  # locally just prompt version update but not create and push tags
  lerna version --no-git-tag-version --no-push
fi
