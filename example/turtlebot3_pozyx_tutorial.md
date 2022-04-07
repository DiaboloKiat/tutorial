<h1 align="center"> Turtlebot3 Tutorial </h1>

- [Turtlebot3 Tutorial](https://emanual.robotis.com/docs/en/platform/turtlebot3/overview/#overview)
- [Github Turtlebot3](https://github.com/ROBOTIS-GIT/turtlebot3)
```
$ git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3.git
```
- [Github turtlebot3_simulations](https://github.com/ROBOTIS-GIT/turtlebot3_simulations)
```
$ git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
```

<h1 align="center"> Pozyx Simulation Tutorial </h1>

- [Github pozyx_simulation](https://github.com/bekirbostanci/pozyx_simulation)
- [Github advoard_localization](https://github.com/advoard/advoard_localization)


<h1 align="center"> How to run </h1>

First, open the turtlebot3 environment
```
$ export TURTLEBOT3_MODEL=burger
$ roslaunch turtlebot3_gazebo turtlebot3_world.launch
```

Second, run the turtlebot3 navigation
```
$ export TURTLEBOT3_MODEL=burger
$ roslaunch turtlebot3_navigation turtlebot3_navigation.launch 
```

Third, run pozyx simulation anchors set up
```
$ roslaunch pozyx_simulation uwb_anchors_set.launch
```

Fourth, run pozyx simulation UWB
```
$ rosrun pozyx_simulation uwb_simulation.py
```

Last, run Kalman Filter localization
```
$ rosrun advoard_localization kalman_filter_localization.py 
```

If want to look distance of UWB, can echo topic name of "/uwb_data_topic" 
```
$ rostopic echo /uwb_data_topic
```