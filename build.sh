#!/bin/bash

set -euo pipefail

build_challenge() {
    name="$1"
    echo "building $name"

    tag="gcr.io/paradigm-ctf/2023/$name:latest"

    docker buildx build --platform linux/amd64 -t "$tag" "$name"
}

declare -a chals=(
    "helloworld"
    "one-hundred-percent"
    "dodont"
)

for chal in "${chals[@]}"; do
    build_challenge $chal
done