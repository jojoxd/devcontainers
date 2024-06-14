#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "kubectl --version" kubectl --version

reportResults
