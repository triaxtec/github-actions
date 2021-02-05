#!/bin/sh

if [ -z "$GITHUB_WORKSPACE" ]; then
    echo "GITHUB_WORKSPACE was not set. Is this running in an Action?" 1>&2
    exit 1
fi

cd "$GITHUB_WORKSPACE"

for component in $INPUT_RUSTUP_COMPONENTS; do
    rustup component add $component
done

make -C $INPUT_MAKEFILE_ROOT $INPUT_MAKEFILE_TARGETS
