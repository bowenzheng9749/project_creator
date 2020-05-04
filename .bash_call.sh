#!/bin/sh
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

# mkdir $(get_project_name $@)
# cd $(get_project_name $@)
# git init

# Here we will call the python script 
# to open up github
python3 /Users/bowenzheng/Git/project_creator/call_github.py $(get_project_name $@)