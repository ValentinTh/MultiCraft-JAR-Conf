#!/bin/bash
## Clean existing jar config
echo -e "
  __  __       _ _   _                 __ _                 _   _    ____     ____             __ _       
 |  \/  |_   _| | |_(_) ___ _ __ __ _ / _| |_              | | / \  |  _ \   / ___|___  _ __  / _(_) __ _ 
 | |\/| | | | | | __| |/ __|  __/ _  | |_| __|  _____   _  | |/ _ \ | |_) | | |   / _ \|  _ \| |_| |/ _  |
 | |  | | |_| | | |_| | (__| | | (_| |  _| |_  |_____| | |_| / ___ \|  _ <  | |__| (_) | | | |  _| | (_| |
 |_|  |_|\__,_|_|\__|_|\___|_|  \__,_|_|  \__|          \___/_/   \_\_| \_\  \____\___/|_| |_|_| |_|\__, |
                                                                                                    |___/ "
echo -e "\033[0;36m ## \033[0;32mI ain't your mamma ! I ain't gon' do your laundry ! \033[37m"
rm -r ./jar/craftbukkit.jar.conf
rm -r ./jar/craftbukkit_beta.jar.plugins
rm -r ./jar/spigot.jar.conf
rm -r ./jar/craftbukkit.jar.plugins
rm -r ./jar/minecraft_optimized.jar.conf
rm -r ./jar/spigot.jar.plugins
rm -r ./jar/craftbukkit_beta.jar.conf
rm -r ./jar/minecraft_server.jar.conf
echo -e "\033[0;36m ## \033[5;32mWhen did you get too confortable ? \033[0m"
echo -e "\033[0;36m ## \033[0;32mI an't your mamma, \033[0;33mBOY \033[0;32mI ain't your mamma ! \033[37m"
rm -r clean.sh
exit
