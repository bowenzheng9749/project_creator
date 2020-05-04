#!/bin/sh

function create() {
cd /Users/bowenzheng/Git 

# This function is used to concatenate all the argv
# with underscore '_' for the project and folder name
get_project_name() {
old="$IFS"
IFS='_'
str="$*"
echo "$str"
IFS=$old

}

mkdir $(get_project_name $@)
cd $(get_project_name $@)
echo $(get_project_name $@) >> README.md
git init
git add README.md

# Here we will call the python script 
# to open up github
va=$(python3 /Users/bowenzheng/Git/project_creator/call_github.py $(get_project_name $@) 2>&1)
git commit -m "first commit"
echo $va
git remote add origin $va
git push -u origin master
code $(get_project_name $@)

}
