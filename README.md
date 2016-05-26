# ROS_Tutorials
Simplified ROS Indigo (in Ubuntu 14.04 LTS) tutorials based on wiki.ros.org/ROS/Tutorials. 
Just for personal reference.

##1.New File Format: .tut(orial)

The current method to create a new file type including two steps:

(1) make a tut.vim in /usr/share/vim/vium74/syntax folder, the content of which can be found in Neur1n/My_Vim/linux_vimrc
(2) add "au BufRead,BufNewFile *.tut setf tut" to /usr/share/vim/vim74/filetype.vim, which is on line 2637 now

##2. New features
(1) The .tut file type is configured to disable the spelling checking of Ubuntu terminal command lines. (May 21, 2016)
