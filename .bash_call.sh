#!/bin/bash
function create() {
# get the project name from command line
PROJECT_NAME=$1
PROJECT_NAME+=' '
while (("$#"));
do  
    PROJECT_NAME+=$2
    PROJECT_NAME+=' '
    shift
done

# call the python function for github
chmod +x call_github.py
python3 call_github.py $PROJECT_NAME

#now we cd to the project folder and create a new project
cd /Users/zhengm/Documents/Projects/MyProjects
if [ -d "$PROJECT_NAME" ]
then 
    echo "Directory already exists"
    exit
fi
mkdir "$PROJECT_NAME"
cd "$PROJECT_NAME"
touch README.md
git init

}