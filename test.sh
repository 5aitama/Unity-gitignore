#!/bin/bash

fileName=".gitignore"

wget -q --output-document=$fileName https://raw.githubusercontent.com/github/gitignore/master/Unity.gitignore
echo "\n# For mac user\n**/*.DS_Store" >> $fileName
