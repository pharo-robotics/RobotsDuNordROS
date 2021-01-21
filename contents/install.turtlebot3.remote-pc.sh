#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/ros.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install ros-melodic-ros-desktop-full
sudo sh -c "rosdep init"
rosdep update

source /opt/ros/melodic/setup.sh

sudo apt-get install -y python-rosinstall git
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sh -c "echo \"/swapfile swap swap defaults 0 0\" >> /etc/fstab"
mkdir -p $HOME/catkin_ws/src
cd $HOME/catkin_ws/src
catkin_init_workspace
cd $HOME/catkin_ws
catkin_make

echo "
source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash
# When connecting through a specific network interface, choose the name in here.

export ROS_CONNECTING_INTERFACE=wlan0
export ROS_HOSTNAME=`ip a s $ROS_CONNECTING_INTERFACE | awk '/inet / {print$2}' | cut -d/ -f1`
# When changing the \"Ros master\" Host, just change ROS_MASTER_IP. / ROS_MASTER_PORT

export ROS_MASTER_IP=$ROS_HOSTNAME
export ROS_MASTER_PORT=11311
export ROS_MASTER_URI=http://$ROS_MASTER_IP:$ROS_MASTER_PORT
" >> ~/.bashrc



sudo apt install ros-melodic-turtlebot3-msgs
sudo apt-get install ros-melodic-turtlebot3

sudo apt-get install ros-melodic-joy ros-melodic-teleop-twist-joy \
  ros-melodic-teleop-twist-keyboard ros-melodic-laser-proc \
  ros-melodic-rgbd-launch ros-melodic-depthimage-to-laserscan \
  ros-melodic-rosserial-arduino ros-melodic-rosserial-python \
  ros-melodic-rosserial-server ros-melodic-rosserial-client \
  ros-melodic-rosserial-msgs ros-melodic-amcl ros-melodic-map-server \
  ros-melodic-move-base ros-melodic-urdf ros-melodic-xacro \
  ros-melodic-compressed-image-transport ros-melodic-rqt-image-view \
  ros-melodic-gmapping ros-melodic-navigation ros-melodic-interactive-markers


cd ~/catkin_ws/src/
git clone -b melodic-devel https://github.com/ROBOTIS-GIT/turtlebot3.git
cd ~/catkin_ws/src/turtlebot3
rm -r turtlebot3_description/ turtlebot3_teleop/ turtlebot3_navigation/ turtlebot3_slam/ turtlebot3_example/
cd ~/catkin_ws/
catkin_make -j1




