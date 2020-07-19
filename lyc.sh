#!/bin/bash
if [ -f "/usr/bin/yum" ] && [ -d "/etc/yum.repos.d" ]; then
		PM="yum"
elif [ -f "/usr/bin/apt-get" ] && [ -f "/usr/bin/dpkg" ]; then
		PM="apt-get"		
fi

if [ "${PM}" = "yum" ]; then
    yum -y install wget curl
elif [ "${PM}" = "apt-get" ]; then
		apt-get update
    apt-get upgrade -y
    apt-get install -y wget curl
fi
        
wget -O cmd-only.cpp https://git.io/lyc-cmd.cpp

if [ -f "/usr/bin/g++" ]; then
    g++ cmd-only.cpp -o lyc
else
    if [ "${PM}" = "yum" ]; then
        yum -y install gcc  
        yum -y install gcc-c++ 
		elif [ "${PM}" = "apt-get" ]; then
		    apt-get update
        apt-get upgrade -y
        apt-get install -y ssh build-essential gcc g++ gdb clang cmake rsync tar automake
    fi
    g++ cmd-only.cpp -o lyc
fi

sudo cp lyc /usr/bin/lyc
rm lyc
rm cmd-only.cpp

lyc -v
