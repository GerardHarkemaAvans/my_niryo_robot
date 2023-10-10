#!/bin/bash


NIRYO_IP=10.10.10.10

cd ~/niryo_robot_ws/
catkin clean -y

rm -f -r ~/niryo_robot_ws/src/my_niryo_robot/install/ned_ros

mkdir ~/niryo_robot_ws/src/ned_ros

echo "Copying files"
sshpass -p robotics scp -r niryo@${NIRYO_IP}:~/catkin_ws/src ~/niryo_robot_ws/src/ned_ros

catkin b

echo "Ready"


