#!/bin/bash

git checkout master

# ---------- Sensors ---------- #

cd ~/tutorial/catkin_ws/src/sensors/realsense-ros
git checkout 2.2.15

# ---------- Turtlebot3 ---------- #

cd ~/tutorial/catkin_ws/src/Turtlebot/turtlebot3
git checkout noetic-devel

cd ~/tutorial/catkin_ws/src/Turtlebot/turtlebot3_simulations
git checkout noetic-devel

cd ~/tutorial/catkin_ws/src/Turtlebot/advoard_localization
git checkout master

# ---------- Pozyx ---------- #

cd ~/tutorial/catkin_ws/src/Pozyx/pozyx_simulation
git checkout master

# ---------- ARG ---------- #

cd ~/tutorial/catkin_ws/src/ARG/real_to_sim_env
git checkout main

cd ~/tutorial/catkin_ws/src/ARG/pokingbot
git checkout main

# ---------- END ---------- #

cd ~/tutorial