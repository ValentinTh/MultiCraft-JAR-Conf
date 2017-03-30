#!/bin/bash
## Custom config get
# Colors
Reset='\033[0m'       # Text Reset
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # Whit
########
echo -e "
  __  __       _ _   _                 __ _                 _   _    ____     ____             __ _       
 |  \/  |_   _| | |_(_) ___ _ __ __ _ / _| |_              | | / \  |  _ \   / ___|___  _ __  / _(_) __ _ 
 | |\/| | | | | | __| |/ __|  __/ _  | |_| __|  _____   _  | |/ _ \ | |_) | | |   / _ \|  _ \| |_| |/ _  |
 | |  | | |_| | | |_| | (__| | | (_| |  _| |_  |_____| | |_| / ___ \|  _ <  | |__| (_) | | | |  _| | (_| |
 |_|  |_|\__,_|_|\__|_|\___|_|  \__,_|_|  \__|          \___/_/   \_\_| \_\  \____\___/|_| |_|_| |_|\__, |
                                                                                                    |___/ "
echo -e "\033[0;36m ## \033[0;32mLet's start getting all this things baby ! \033[37m"
wget http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/custom/custom.jar.conf
wget http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/custom/custom-bungee.jar.conf
echo -e "\033[0;36m ## \033[0;32mWell well well, that's the end you get all \033[0;33mCUSTOM \033[0;32mfiles ! Great ! \033[37m"
echo -e "\033[0;36m ## \033[0;32mGoodbye ! \033[0m"
exit
