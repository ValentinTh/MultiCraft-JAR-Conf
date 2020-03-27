#!/bin/bash
## Spanish translation add
echo -e "
  __  __       _ _   _                 __ _                 _   _    ____     ____             __ _       
 |  \/  |_   _| | |_(_) ___ _ __ __ _ / _| |_              | | / \  |  _ \   / ___|___  _ __  / _(_) __ _ 
 | |\/| | | | | | __| |/ __|  __/ _  | |_| __|  _____   _  | |/ _ \ | |_) | | |   / _ \|  _ \| |_| |/ _  |
 | |  | | |_| | | |_| | (__| | | (_| |  _| |_  |_____| | |_| / ___ \|  _ <  | |__| (_) | | | |  _| | (_| |
 |_|  |_|\__,_|_|\__|_|\___|_|  \__,_|_|  \__|          \___/_/   \_\_| \_\  \____\___/|_| |_|_| |_|\__, |
                                                                                                    |___/ "
echo -e "\033[0;36m ## \033[0;32mIntegramos la traducción al español? \033[37m"
mkdir es
wget -P ./fr https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/translate/es/admin.php
wget -P ./fr https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/translate/es/mc.php
wget -P ./fr https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/translate/es/name.php
echo -e "\033[0;36m ## \033[0;32mY aqui \033[0;33men \033[0;32mespañol! BRAVO ! \033[37m"
echo -e "\033[0;36m ## \033[5;32mAdios ! \033[0m"
rm -r Install-es.sh
exit
