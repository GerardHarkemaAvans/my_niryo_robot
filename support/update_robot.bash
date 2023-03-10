#!/bin/bash


cd $HOME/niryo_robot_ws/src
echo "Updating urdf of robot..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_robot_description niryo@$ROS_MASTER:/home/niryo/niryo_robot_ws/src

echo "Updating moveit config of robot ned..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_ned_moveit_config niryo@$ROS_MASTER:/home/niryo/niryo_robot_ws/src

echo "Updating moveit config of robot ned2..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_ned2_moveit_config niryo@$ROS_MASTER:/home/niryo/niryo_robot_ws/src

echo "Updating moveit config of robot common..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_moveit_config niryo@$ROS_MASTER:/home/niryo/niryo_robot_ws/src

echo "Ready"
