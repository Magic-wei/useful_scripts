#!/bin/bash
set -e  # exit on first error

# get absolute path
SCRIPT_DIR=$( cd $( dirname $(readlink -f ${BASH_SOURCE[0]}) ) && pwd )

main(){
    source ${SCRIPT_DIR}/find_git_repo.sh $1
    echo "Found Git repositories: ${GIT_REPO_DIR[*]}"
}

main $1

