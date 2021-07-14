#!/bin/bash

git config --global user.name "DiaboloKiat"
git config --global user.email "DiaboloKiat@gmail.com"

git status
git checkout master
echo "Enter your message"
read message

BRANCH=master
if [ ! -z "$1" ]; then
    echo "operator on branch: $1"
    BRANCH=$1
fi

echo "--------------------------------------------------------------------------------"
source ~/tutorial/github/git_pull.sh $BRANCH

PULLSTAT=$?
if [ "$PULLSTAT" -gt 0 ] ; then
   echo "There is conflict. Aborting"
   cd $cur_path/
   return
fi
echo "--------------------------------------------------------------------------------"
echo "-------------------------pull success-------------------------------------------"
echo "--------------------------------------------------------------------------------"


# push master
echo "--------------------------------------------------------------------------------"
echo "---------------------------push tutorial----------------------------------------"
echo "--------------------------------------------------------------------------------"
cd ~/tutorial/
git add -A
git commit -m "${message} on tutorial"
git push
