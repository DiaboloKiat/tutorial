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
echo "-------------------------------------------------------------------------------"
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< pull success >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "-------------------------------------------------------------------------------"

# ---------- Turtlebot3 ---------- #
echo "-------------------------------------------------------------------------------"
echo "******************************* push turtlebot3 *******************************"
echo "-------------------------------------------------------------------------------"
cd ~/tutorial/catkin_ws/src/Turtlebot/turtlebot3
git checkout noetic-devel
git add -A
git commit -m "${message} on turtlebot3"
git push

echo "-------------------------------------------------------------------------------"
echo "************************* push turtlebot3_simulations *************************"
echo "-------------------------------------------------------------------------------"
cd ~/tutorial/catkin_ws/src/Turtlebot/turtlebot3_simulations
git checkout noetic-devel
git add -A
git commit -m "${message} on turtlebot3_simulations"
git push

echo "-------------------------------------------------------------------------------"
echo "************************** push advoard_localization **************************"
echo "-------------------------------------------------------------------------------"
cd ~/tutorial/catkin_ws/src/Turtlebot/advoard_localization
git checkout master
git add -A
git commit -m "${message} on advoard_localization"
git push

# ---------- Pozyx ---------- #
echo "-------------------------------------------------------------------------------"
echo "**************************** push pozyx_simulation ****************************"
echo "-------------------------------------------------------------------------------"
cd ~/tutorial/catkin_ws/src/Pozyx/pozyx_simulation
git checkout master
git add -A
git commit -m "${message} on pozyx_simulation"
git push

echo "-------------------------------------------------------------------------------"
echo "******************************** push tutorial ********************************"
echo "-------------------------------------------------------------------------------"
cd ~/tutorial/
git add -A
git commit -m "${message} on tutorial"
git push
