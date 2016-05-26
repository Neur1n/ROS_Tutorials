#! /bin/bash

# < setup sources.list >
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# < setup keys >
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116

# < installation >
sudo apt-get update

# < desktop full install >
sudo apt-get install ros-indigo-desktop-full

# < initialize rosdep >
sudo rosdep init
rosdep update

# < environment setup >
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc

# < getting rosinstall >
sudo apt-get install python-rosinstall
