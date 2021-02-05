#!/bin/sh

if [ -z "$GITHUB_WORKSPACE" ]; then
    echo "GITHUB_WORKSPACE was not set. Is this running in an Action?" 1>&2
    exit 1
fi

cd "$GITHUB_WORKSPACE"

cargo deny check -c /deny.toml $INPUT_CHECK_WHICH
