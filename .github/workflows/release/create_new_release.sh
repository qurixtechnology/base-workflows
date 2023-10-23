#!/bin/bash -e

bump_type=$1
release_type=$2

git fetch --tags origin
# get tags across all branches, not just the current branch
curr_tag=$(git describe --tags `git rev-list --tags --max-count=1` | awk 'NR==1')

if [ "$bump_type" == "chore" ]; then 
    echo "Tagged with:"
    echo $curr_tag
    exit 0
fi

if [[ "$curr_tag" == "" ]]; then
    if [[ "$release_type" == "final" ]]; then
        curr_tag='v0.1.0'       # first release
    else
        curr_tag='v0.1.0rc0'    # first release candidate
    fi
    echo "Tagged with:"
    echo $curr_tag
    exit 0
fi

echo "Current tag:"
echo $curr_tag

curr_version=${curr_tag/v/}
curr_version=${curr_version:0:5}

rc_bit=${curr_tag:8}
rc_bit=$((rc_bit+1))

# strips 'rc' suffix and publishes version
if grep -q "rc" <<< "$curr_tag" && [ "$release_type" == "final" ]; then 
    new_tag="v${curr_version}"
    echo "Tagged with:"
    echo $new_tag
    exit 0
fi

# Just bump rc integer if we are working with release candidates
if [ "$release_type" == "rc" ]; then 
    new_tag="v${curr_version}rc${rc_bit}"
    echo "Tagged with:"
    echo $new_tag
    exit 0
fi

# Increments current version bit respectively according to bump type
curr_version_bits=(${curr_version//./ })
curr_major=$((${curr_version_bits[0]}))
curr_minor=$((${curr_version_bits[1]}))
curr_patch=$((${curr_version_bits[2]}))

if [ "$bump_type" == "major" ] || ([ "$curr_minor" == 999 ] && [ "$curr_patch" == 999 ]); then
    ((curr_major++))
    curr_minor=0
    curr_patch=0
elif [ "$bump_type" == "minor" ] || [ "$curr_patch" == 999 ]; then
    ((curr_minor++))
    curr_patch=0
else
    ((curr_patch++))
fi

new_tag="v${curr_major}.${curr_minor}.${curr_patch}"

echo "Tagged with:"
echo $new_tag
exit 0