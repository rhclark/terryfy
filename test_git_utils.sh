#!/bin/bash
if [ "${TRAVIS_OS_NAME}" = "linux" ]; then
    echo "This should say linux"
    echo $TRAVIS_OS_NAME
    uname -a
    
#    install python-pip
#    install python-dev
#    install python-numpy
#    install libxml2-dev
#    install zlib1g-dev
#    install libbz2-dev
#    pip install --user python-libsbml
else
    echo "This should say osx"
    echo $TRAVIS_OS_NAME
    uname -a
    
    brew update
    brew install python
    brew tap homebrew/science
    brew install libxml2
    brew install libzip
    brew install libsbml
    brew link --overwrite python
    /usr/local/bin/pip install --user python-libsbml
    cd ./bng2/Network3 && mkdir -p m4 && cd .. && perl make_dist.pl --build --validate
fi
