#!/usr/bin/env bash
set -euo pipefail

# Make sure we run as sudo.
# Bootc needs sudo to deploy the new image.
if (( UID != 0 )); then
    exec sudo -- "$0" "$@"
fi

cd "$(dirname "$0")"
podman build --network=host --pull=always --file Containerfile --tag my-anatase .
bootc switch --transport containers-storage "my-anatase"
