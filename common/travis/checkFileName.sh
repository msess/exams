#!/bin/sh
#
# checkFileName.sh


wronglyNamedFiles=$(find . -type f |
    # exclude non-exam file paths
    grep -v '^./.git/' |
    grep -v './README.md' |
    grep -v './.travis.yml' |
    grep -v './common/travis/checkFileName.sh' |
    # print file names that do not match proper naming scheme
    grep -vE '^.\/[A-Z]+ [0-9]+\/(Final|Midterm|Homework)\/(Summer|Fall|Spring)-[0-9]{4}[^/]+$'
    )

numberOfWronglyNamedFiles=$(echo $wronglyNamedFiles | wc -l)

if [ numberOfWronglyNamedFiles != "0" ]
then
   echo "The following files are not named with the proper naming convention and/or not placed in the proper folder hierarchy:"
   echo $wronglyNamedFiles
   exit 1
fi
exit 0
