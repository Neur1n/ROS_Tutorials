#! /bin/bash

#version=$1
#description=$2
#email=$3
#license=$4

# Manually Input
#sed -i -e "s/\(<version>\).*\(<\)/\1$1\2/" \
#-e "s/\(<description>\).*\(<\)/\1$2\2/" \
#-e "s/\(email=\"\).*\(\"\)/\1$3\2/" \
#-e "s/\(<license>\).*\(<\)/\1$4\2/" ~/Documents/Test_ws/src/beginner_tutorials/package.xml

# Auto-Fill
sed -i -e "s/\(<version>\).*\(<\)/\10.1.0\2/" \
-e "s/\(<description>\).*\(<\)/\1The beginner_tutorial Package\2/" \
-e "s/\(email=\"\).*\(\"\)/\1jihang2014@my.fit.edu\2/" \
-e "s/\(<license>\).*\(<\)/\1BSD\2/" ~/Documents/Test_ws/src/beginner_tutorials/package.xml

 gvim -R ~/Documents/Test_ws/src/beginner_tutorials/package.xml
