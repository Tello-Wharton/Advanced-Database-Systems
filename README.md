# Advanced-Database-Systems
# Getting Started
1. [Download and install VirtualBox 5.1.x](https://www.virtualbox.org/wiki/Downloads)
2. [Download and install Vagrant](http://www.vagrantup.com/downloads.html)
3. [Download and install Git for Windows](https://git-scm.com/) (Windows only)
4. Open Terminal or Git Bash
5. Clone this repository to a folder of your choice ```git clone https://github.com/Tello-Wharton/Advanced-Database-Systems.git```
6. Run ```chmod -R 755 Advanced-Database-Systems``` on the folder (Linux and Mac only)
7. Enter the Advanced-Database-Systems folder
8. Run ```vagrant up```
9. Run ```vagrant ssh``` to ssh into the virtual machine's shell
10. Use ```sudo -s``` to switch to the root user, the machine, the machine is designed to be used by root
11. Use ```psql -U root -d adb``` to access the database

# Useful Commands
* If there is something wrong with your setup, you can remove everything by using ```vagrant destroy```
* If you just want to shutdown your virtual machine, you can use ```vagrant halt```

# Using the virtual machine
* This virtual machine is set up to be used by the root user, trying to use other users may not work out for you
* To get data onto the virtual machine, simply place it in the Advanced-Database-Systems directory on your host machine, this is accessible from your virtual machine in the /vagrant folder
* If you are using a lab computer, I suggest backing up your data before leaving the lab. For now I would do this by backing up to the /vagrant folder, and copying that to a memory stick. I will look for a more elegant solution in the future. 
* If your ```vagrant up``` does not work on the first try, that is likely due to a network error on the lab computer's part, and you should perform ```vagrant destroy``` and try again.
