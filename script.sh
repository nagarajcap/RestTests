#!/bin/bash
GITHUB_REPO="nagarajcap/RestTests"  
GITHUB_TOKEN="9RQFlph2RrKq3tRpl01Ei2neGQ4SOt13UiHE"    
GITHUB_WORKFLOW="Rest.yml"      
REF="main"                             

# Trigger GitHub Action via GitHub API
curl -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -H "Authorization: Bearer ghp_$GITHUB_TOKEN" \
  https://api.github.com/repos/$GITHUB_REPO/actions/workflows/$GITHUB_WORKFLOW/dispatches \
  -d '{"ref":"main"}'
