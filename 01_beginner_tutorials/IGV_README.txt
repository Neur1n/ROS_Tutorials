Editor: Jihang Li (jihang2014@my.fit.edu)

================================================================================ 1. Internet Broswer
Yes, I uninstalled Firefox. But the "Ubunfox Extension for Firefox" is still in 
this machine.

================================================================================ 2. Text Editor
I prefer Vim. This section is about the configuration of Vim. Go to line 24 if 
you don't use Vim (but actually you can skip this part much faster with Vim).

(1) the following specifications of the "line"s are based on non-text-wrapping.

(2) to customize the Vim with GUI, run "sudo gedit ../../etc/vim/vimrc" command. 
    - to change the default color scheme, go to line 23.
    - to check or modify the current customization, start from line 56.

(3) for now I don't know how to specify the backup or swap file directory. 
    (Check line 70 and 71 of vimrc)

(4) to install a new color scheme, run "sudo gedit ../../usr/share/vim/vim74/
    colors/ xxx.vim" command. "xxx" is the name of the color scheme, then copy
    paste the color scheme code into the pop up empty file. Save it, done.

================================================================================ 3. ROS Installation
There is a "install_ros.sh" on the desktop. I tried to install ROS by running
the .sh file but it didn't work. For safety, just manually install ROS step by 
step, by following the texts in "install_ros.sh".

If the file is missed, check the following:
********************************************************************************
******************** based on Ubuntu 14.04 LTS & ROS Indigo ********************
# < setup sources.list >
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) 
main" > /etc/apt/sources.list.d/ros-latest.list'

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
********************************************************************************
********************************************************************************

================================================================================ 4. Quick "cd" to ROS Workspace Source Folder
All workspaces are in ~/Document. while working with them, you can append a line 
in ~/.bashrc file to quickly "cd" to the src folder of a workspace by using 
"alias". Example:

    alias testwssrc="cd ~/Documents/Test_ws/src"

After appending do remember to type "source ~/.bashrc" in terminal to apply the 
changes. Then every time typing "testws<Enter>" in terminal it will lead you to
the ~/Documents/Test_ws/src folder.

* Don't know if the self-customized commands will conflict with any system 
  command yet.
================================================================================ 5. Create a ROS Package by using a Shell Script
You can create a ROS package by typing the following command line in terminal:

    sh ~/Desktop/Create_Package.sh    

Before doing this, make sure your "pwd" is where you want to create a package.


================================================================================ 6. New File Format: .tut(orial)
I have tried to create a new file format for those ROS tutorials with a ".tut"
extension. According to what I know, "Assogiate" is the tool I need, but I did
not want to mess up the machine since it it no longer in the software center.
So I just simply declared those text files with the extension ".tut", and made
a simple syntax highlighting for this format. Just for the keyword "#", used 
for commenting. The associated configuratoin files are:

    - /usr/share/vim/vim74/syntax/tut.vim
    - /usr/share/vim/vim74/ftplugin/tut.vim
    - /etc/vim/vimrc (line 80)

================================================================================
* For other details about ROS, including some commands from the ROS wiki 
tutorials (wiki.ros.org/ROS/Tutorials) please check the other ROS related files 
in ~/Documents/ROS_related.
