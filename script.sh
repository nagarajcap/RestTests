#!/bin/bash
GITHUB_REPO=$1  
GITHUB_TOKEN="yy2PnWWWoQNQjRnewmkRohBizsgGdj429Uq9"    
GITHUB_WORKFLOW=$2     
REF="main"                             

# Trigger GitHub Action via GitHub API
curl -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -H "Authorization: Bearer ghp_$GITHUB_TOKEN" \
  https://api.github.com/repos/$GITHUB_REPO/actions/workflows/$GITHUB_WORKFLOW/dispatches \
  -d '{"ref":"main"}'
