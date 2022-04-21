#!/bin/bash

git checkout master

# ---------- Sensors ---------- #

echo "-------------------------- realsense-ros ----------------------------------------"
cd ~/tutorial/catkin_ws/src/sensors/realsense-ros
git checkout 2.2.15
git status

# ---------- Turtlebot3 ---------- #

echo "---------------------------- turtlebot3 ------------------------------------------"
cd ~/tutorial/catkin_ws/src/Turtlebot/turtlebot3
git checkout noetic-devel
git status

echo "---------------------- turtlebot3_simulations ------------------------------------"
cd ~/tutorial/catkin_ws/src/Turtlebot/turtlebot3_simulations
git checkout noetic-devel
git status

echo "------------------------ advoard_localization -------------------------------------"
cd ~/tutorial/catkin_ws/src/Turtlebot/advoard_localization
git checkout master
git status

# ---------- Pozyx ---------- #

echo "-------------------------- pozyx_simulation ---------------------------------------"
cd ~/tutorial/catkin_ws/src/Pozyx/pozyx_simulation
git checkout master
git status

# ---------- ARG ---------- #

echo "--------------------------- real_to_sim_env ----------------------------------------"
cd ~/tutorial/catkin_ws/src/ARG/real_to_sim_env
git checkout main
git status

echo "------------------------------ pokingbot -------------------------------------------"
cd ~/tutorial/catkin_ws/src/ARG/pokingbot
git checkout main
git status

# ---------- END ---------- #

cd ~/tutorial
git status