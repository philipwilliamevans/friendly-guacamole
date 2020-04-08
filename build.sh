#!/bin/bash

export TERM=${TERM:-dumb}
# cp -rv animated-spork jar-files
echo "Copying input files to output directory"
cp -R friendly-guacamole/. jar-files
echo "Directory listing of friendly-guacamole"
ls -al friendly-guacamole
echo "Directory listing of jar-files"
ls -al jar-files
echo "CD"
cd jar-files
echo "Current directory is: "
pwd
echo "Trying to run gradle:"
./gradlew --no-daemon build