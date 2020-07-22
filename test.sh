#!/bin/bash

fileName=".gitignore"
gitignoreUrl="https://raw.githubusercontent.com/github/gitignore/master/Unity.gitignore"

# File(s) or folder(s) to add in the .gitignore file.
extra=("# For Mac OS user\n**/.DS_Store")

wget -q --output-document=$fileName $gitignoreUrl

for index in ${!extra[@]}; do
  if [ $index = 0 ]; then
    printf "\n" >> $fileName
  fi
  
  printf "{$extra[$index]}\n" >> $fileName
  
done
