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

echo "-----------------------------------------------------------------------------------------------------"
echo "-------------------------------------pull real_to_sim_env--------------------------------------------"
echo "-----------------------------------------------------------------------------------------------------"
cd ~/tutorial/catkin_ws/src/ARG/real_to_sim_env
git checkout main
git pull

CONFLICTS=$(git ls-files -u | wc -l)
if [ "$CONFLICTS" -gt 0 ] ; then
   echo "There is conflict in real_to_sim_env. Aborting"
   return 1
fi

echo "-----------------------------------------------------------------------------------------------"
echo "-------------------------------------pull pokingbot--------------------------------------------"
echo "-----------------------------------------------------------------------------------------------"
cd ~/tutorial/catkin_ws/src/ARG/pokingbot
git checkout main
git pull

CONFLICTS=$(git ls-files -u | wc -l)
if [ "$CONFLICTS" -gt 0 ] ; then
   echo "There is conflict in pokingbot. Aborting"
   return 1
fi

echo "-----------------------------------------------------------------------------------------------"
echo "-------------------------------------pull pozyx_simulation-------------------------------------"
echo "-----------------------------------------------------------------------------------------------"
cd ~/tutorial/catkin_ws/src/Pozyx/pozyx_simulation
git checkout master
git pull

CONFLICTS=$(git ls-files -u | wc -l)
if [ "$CONFLICTS" -gt 0 ] ; then
   echo "There is conflict in pozyx_simulation. Aborting"
   return 1
fi

# echo "-----------------------------------------------------------------------------------------------"
# echo "-------------------------------------pull pokingbot--------------------------------------------"
# echo "-----------------------------------------------------------------------------------------------"
# cd ~/tutorial/catkin_ws/src/ARG/pokingbot
# git checkout main
# git pull

# CONFLICTS=$(git ls-files -u | wc -l)
# if [ "$CONFLICTS" -gt 0 ] ; then
#    echo "There is conflict in pokingbot. Aborting"
#    return 1
# fi


cd ~/tutorial
return 0
