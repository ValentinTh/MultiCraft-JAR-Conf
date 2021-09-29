#!/bin/bash
## Custom config get
echo -e "
  __  __       _ _   _                 __ _                 _   _    ____     ____             __ _       
 |  \/  |_   _| | |_(_) ___ _ __ __ _ / _| |_              | | / \  |  _ \   / ___|___  _ __  / _(_) __ _ 
 | |\/| | | | | | __| |/ __|  __/ _  | |_| __|  _____   _  | |/ _ \ | |_) | | |   / _ \|  _ \| |_| |/ _  |
 | |  | | |_| | | |_| | (__| | | (_| |  _| |_  |_____| | |_| / ___ \|  _ <  | |__| (_) | | | |  _| | (_| |
 |_|  |_|\__,_|_|\__|_|\___|_|  \__,_|_|  \__|          \___/_/   \_\_| \_\  \____\___/|_| |_|_| |_|\__, |
                                                                                                    |___/ "
echo -e "\033[0;36m ## \033[0;32mLet's start getting all these things baby ! \033[37m"
wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/custom/my-jar.jar.conf
chown minecraft:minecraft ./jar/my-jar.jar.conf
chmod 755 ./jar/my-jar.jar.conf

wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/custom/hardmodded.jar.conf
chown minecraft:minecraft ./jar/hardmodded.jar.conf
chmod 755 ./jar/hardmodded.jar.conf

wget -N -P ./jar http://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/custom/templated-modpack.jar.conf
chown minecraft:minecraft ./jar/templated-modpack.jar.conf
chmod 755 ./jar/templated-modpack.jar.conf

echo -e "\033[0;36m ## \033[0;35mPermissions accorded my general ! \033[0m"
echo -e "\033[0;36m ## \033[0;32mWell well well, that's the end you get all \033[0;33mCUSTOM \033[0;32mfiles ! Great ! \033[37m"
echo -e "\033[0;36m ## \033[5;32mGoodbye ! \033[0m"
rm -r custom.sh
exit
