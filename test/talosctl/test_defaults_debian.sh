#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "talosctl client --version" talosctl client --version

reportResults
