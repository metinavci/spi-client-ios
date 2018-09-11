#!/bin/bash
#
# CI script to verify version tag against the version 
# in the podspec file. When failed, it needs to be fixed manually.
#

# Path to the *.podspec file
PODSPEC="SPIClient-iOS.podspec"
# Tag version to verify against
TAG_VER=$1

cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

VER_RE="s.version *= *'([0-9.]+)'"

if [[ ! `cat $PODSPEC` =~ $VER_RE ]] || [ ${BASH_REMATCH[1]} != "$TAG_VER" ]; then
    echo "ERROR: Tag version '$TAG_VER' does not match podspec version!"
    exit 12
fi
