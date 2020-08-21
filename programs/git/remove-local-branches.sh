#!/usr/bin/env bash
set -uo pipefail

ARG=${1:-""}

# Returns all branches which do not exists on the remote
function get_untracked_branches {
    REMOTE_BRANCHES=$(git branch -r | grep -v issue | awk -F '/' '{ print $2 }')
    LOCAL_BRANCHES=$(git branch)

    UNTRACKED_BRANCHES=""
    for BRANCH in $(git branch --list --no-color); do
        RESULT=$(echo "$REMOTE_BRANCHES" | grep $BRANCH)
        REF=$(git show-ref --verify refs/heads/"$BRANCH" 2> /dev/null)
        IS_BRANCH_EXIT=$?

        if [[ "$RESULT" == "" ]] && [[ "$IS_BRANCH_EXIT" == "0" ]]; then
            UNTRACKED_BRANCHES="$UNTRACKED_BRANCHES$BRANCH\n"
            continue
        fi
    done

    printf "$UNTRACKED_BRANCHES"
}

function remove_branches {
    BRANCHES=$1
    for BRANCH in $(echo "$BRANCHES"); do
        git branch -D $BRANCH
    done
}

case $ARG in
    -d|--dry-run)
    get_untracked_branches
    shift
    ;;
    -r|--remove)
    UNTRACKED=$(get_untracked_branches)
    remove_branches "$UNTRACKED"
    ;;
    *)
    echo "Remove local branches which do not exist on the remote"
    echo ""
    echo "USAGE:"
    echo "--dry-run - see which local branches would be removed"
    echo "--remove - delete local branches"
    shift
    ;;
esac