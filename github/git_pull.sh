#! /bin/bash

# echo "password: $2"
git checkout master
BRANCH=master
if [ ! -z "$1" ]; then
    echo "pull branch: $1"
    BRANCH=$1
fi

echo "---------------------------------------------------------------------------------------------------"
echo "------------------------------------pull tutorial--------------------------------------------------"
echo "---------------------------------------------------------------------------------------------------"
git pull

CONFLICTS=$(git ls-files -u | wc -l)
if [ "$CONFLICTS" -gt 0 ] ; then
   echo "There is conflict in tutorial. Aborting"
   return 1
fi

echo "---------------------------------------------------------------------------------------------------"
echo "-------------------------------------pull realsense-ros--------------------------------------------"
echo "---------------------------------------------------------------------------------------------------"
cd ~/tutorial/catkin_ws/src/sensors/realsense-ros
git checkout 2.2.15
git pull

CONFLICTS=$(git ls-files -u | wc -l)
if [ "$CONFLICTS" -gt 0 ] ; then
   echo "There is conflict in realsense-ros. Aborting"
   return 1
fi

cd ~/tutorial
return 0
