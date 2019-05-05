#!/bin/bash
## German translation add
echo -e "
  __  __       _ _   _                 __ _                 _   _    ____     ____             __ _       
 |  \/  |_   _| | |_(_) ___ _ __ __ _ / _| |_              | | / \  |  _ \   / ___|___  _ __  / _(_) __ _ 
 | |\/| | | | | | __| |/ __|  __/ _  | |_| __|  _____   _  | |/ _ \ | |_) | | |   / _ \|  _ \| |_| |/ _  |
 | |  | | |_| | | |_| | (__| | | (_| |  _| |_  |_____| | |_| / ___ \|  _ <  | |__| (_) | | | |  _| | (_| |
 |_|  |_|\__,_|_|\__|_|\___|_|  \__,_|_|  \__|          \___/_/   \_\_| \_\  \____\___/|_| |_|_| |_|\__, |
                                                                                                    |___/ "
echo -e "\033[0;36m ## \033[0;32mUnd German wird ! \033[37m"
mkdir fr
wget -P ./fr https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/translate/de/admin.php
wget -P ./fr https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/translate/de/mc.php
wget -P ./fr https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/translate/de/name.php
echo -e "\033[0;36m ## \033[0;32mDu bist mit \033[0;33mDeutsch \033[0;32mjetzt ! BRAVO ! \033[37m"
echo -e "\033[0;36m ## \033[5;32mAufwiedersehen ! \033[0m"
rm -r Install-de.sh
exit
