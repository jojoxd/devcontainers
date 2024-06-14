#!/usr/bin/env sh
set -e

. ./library_scripts.sh

# nanolayer is a cli utility which keeps container layers as small as possible
# source code: https://github.com/devcontainers-contrib/nanolayer
# `ensure_nanolayer` is a bash function that will find any existing nanolayer installations, 
# and if missing - will download a temporary copy that automatically get deleted at the end 
# of the script
ensure_nanolayer nanolayer_location "v0.5.4"


$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/gh-release:1.0.23" \
    --option repo='fluxcd/flux2' --option binaryNames='flux' --option version="$VERSION" --option assetRegex='^flux_(.*)\.tar\.gz$'
    


echo 'Done!'