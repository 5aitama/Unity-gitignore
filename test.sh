#!/bin/bash

$fileName=.gitignore

wget -q --output-document=$fileName https://raw.githubusercontent.com/github/gitignore/master/Unity.gitignore
echo "**/*.DS_Store" >> $fileName
