#!/bin/bash

filePath=".gitignore"
gitignoreUrl="https://raw.githubusercontent.com/github/gitignore/master/Unity.gitignore"
extraUrl="https://raw.githubusercontent.com/5aitama/Unity-gitignore/master/extras"

curl $gitignoreUrl --output $filePath
printf "\n$(curl -s $extraUrl)\n" >> $filePath
