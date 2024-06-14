#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "flux --version" flux --version

reportResults
