#!/bin/bash

filePath=".gitignore"
gitignoreUrl="https://raw.githubusercontent.com/github/gitignore/master/Unity.gitignore"
separator="\n"

# File(s) or folder(s) to add in the .gitignore file.
extra=("# For Mac OS user\n**/.DS_Store")

wget -q --output-document=$filePath $gitignoreUrl

for index in ${!extra[@]}; do
  if [ $index = 0 ]; then
    printf $separator >> $filePath
  fi
  
  printf "${extra[$index]}$separator" >> $filePath
  
done