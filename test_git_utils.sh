#!/bin/bash
set -ev
bundle exec rake:units
if [ "${TRAVIS_OS_NAME}" = "linux" ]; then
    echo "This should say linux"
else
    echo "This should say osx"
fi
uname -a
