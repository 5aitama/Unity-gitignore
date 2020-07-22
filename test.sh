#!/bin/bash

fileName=".gitignore"
gitignoreUrl="https://raw.githubusercontent.com/github/gitignore/master/Unity.gitignore"

# File(s) or folder(s) to add in the .gitignore file.
extra=("# For Mac OS user\n**/.DS_Store")

wget -q --output-document=$fileName $gitignoreUrl

for text in ${extra[@]}; do
  printf $text >> $fileName
done
