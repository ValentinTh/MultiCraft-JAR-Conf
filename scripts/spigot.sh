#!/bin/bash
# Spigot config get
echo -e "
  __  __       _ _   _                 __ _                 _   _    ____     ____             __ _       
 |  \/  |_   _| | |_(_) ___ _ __ __ _ / _| |_              | | / \  |  _ \   / ___|___  _ __  / _(_) __ _ 
 | |\/| | | | | | __| |/ __|  __/ _  | |_| __|  _____   _  | |/ _ \ | |_) | | |   / _ \|  _ \| |_| |/ _  |
 | |  | | |_| | | |_| | (__| | | (_| |  _| |_  |_____| | |_| / ___ \|  _ <  | |__| (_) | | | |  _| | (_| |
 |_|  |_|\__,_|_|\__|_|\___|_|  \__,_|_|  \__|          \___/_/   \_\_| \_\  \____\___/|_| |_|_| |_|\__, |
                                                                                                    |___/ "
echo -e "\033[0;36m ## \033[0;32mLet's start getting all this things baby ! \033[37m"
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-x-latest.jar.conf
chown minecraft:minecraft ./jar/spigot-x-latest.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.12.2.jar.conf
chown minecraft:minecraft ./jar/spigot-1.12.2.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.12.1.jar.conf
chown minecraft:minecraft ./jar/spigot-1.12.1.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.11.2.jar.conf
chown minecraft:minecraft ./jar/spigot-1.11.2.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.10.2.jar.conf
chown minecraft:minecraft ./jar/spigot-1.10.2.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.9.4.jar.conf
chown minecraft:minecraft ./jar/spigot-1.9.4.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.8.8.jar.conf
chown minecraft:minecraft ./jar/spigot-1.8.8.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.7.10.jar.conf
chown minecraft:minecraft ./jar/spigot-1.7.10.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.7.2.jar.conf
chown minecraft:minecraft ./jar/spigot-1.7.2.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.6.4.jar.conf
chown minecraft:minecraft ./jar/spigot-1.6.4.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.5.2.jar.conf
chown minecraft:minecraft ./jar/spigot-1.5.2.jar.conf
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/minecraft/spigot/spigot-1.4.7.jar.conf
chown minecraft:minecraft ./jar/spigot-1.4.7.jar.conf
echo -e "\033[0;36m ## \033[0;35mPermissions accorded my general ! \033[0m"
echo -e "\033[0;36m ## \033[0;32mWell well well, that's the end you get all \033[0;33mSPIGOT \033[0;32mfiles ! Great ! \033[37m"
echo -e "\033[0;36m ## \033[5;32mGoodbye ! \033[0m"
rm -r spigot.sh
exit
