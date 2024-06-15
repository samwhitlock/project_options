#!/usr/bin/env bash
set -u
set -o pipefail

# Should be run immediately after checkout manually.
# afaik, there is no way to automatically run this on checkout 

# repo_root=$(git rev-parse --show-toplevel)
official_repo_url="https://github.com/aminya/project_options.git"
upstream_remote_name="upstream"

if (git remote show | grep -q "$upstream_remote_name"); then
    echo "Remote $upstream_remote_name already exists."
else
    git remote add $upstream_remote_name "$official_repo_url"
    echo "Remote $upstream_remote_name added."
fi
