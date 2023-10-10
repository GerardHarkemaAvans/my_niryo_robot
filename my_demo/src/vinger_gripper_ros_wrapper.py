#!/usr/bin/env python

# Imports
from niryo_robot_python_ros_wrapper import *
import rospy

# Initializing ROS node
rospy.init_node('niryo_ned_example_python_ros_wrapper')

# Connecting to the ROS Wrapper & calibrating if needed
niryo_robot = NiryoRosWrapper()
niryo_robot.calibrate_auto()
niryo_robot.open_gripper()
rospy.sleep(3)
niryo_robot.close_gripper()
rospy.sleep(3)
niryo_robot.open_gripper()


