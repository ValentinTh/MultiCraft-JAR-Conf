# How To - Install Profiles automaticly

Download at least the install script idealy also the config file *install_conf*

Then make it executable and run it.

That's it.

   
- only script 

      wget https://raw.githubusercontent.com/MarioWi/MultiCraft-JAR-Conf/Testing/install.sh
   
   The script will download the default config (from this repo given in the install.sh)
- script and config

      wget https://raw.githubusercontent.com/MarioWi/MultiCraft-JAR-Conf/Testing/install.sh && wget https://raw.githubusercontent.com/MarioWi/MultiCraft-JAR-Conf/Testing/install_config
- make it executable and run it

      chmod +x install.sh && sudo ./install.sh

If you want to log what the script do's, execute the script like so

    sudo ./install.sh -o log

The script will now log all the magic in the file ***log***.
Profile which are available and could be installed are written in the *versions.csv*. This file will be also loaded automaticaly by the install script but from the Repo given in the install.sh.

```You should be in the Multicraft folder before you do the above steps.```  
```Or you must download the install_config befor and change the "jar_path" .```  

----
Add a Profile / Conf File
-----
If you want to add another profile to versions.csv, just add it to the file. 

It doesn't have to be in a specific order, but it is easier to read if you enter it in that order or at least on the relevant server

-----
Add a new Server
-----
If you want to add a new server with the corresponding profiles, you must enter the API in the ***versions.csv***, in the ***install_config*** and also in ***the install.sh***.

The name of the server must be added to the listServer variable and written exactly as in the versions.csv

`versions.csv`
| Server | Version | Required Java version | Version of profile |
| :------|:-------:|:---------------------:|:------------------:|
|...|...|...|...|
|paperspigot|1.17.1|Java17|1
|craftbukkuit|1.18|Java17|1|
|tacospigot|1.13.2|Java8|1|

`install_config`

...
listServer="vanilla spigot paperspigot custom craftbukkuit tacospigot"

`install.sh`

The first API must also be written exactly as in the other files. The second is how the API name will be displayed during installation. Last but not least, the on / off is the default selection during installation. (~row 123)

    ...
    server=(
        "vanilla" "Vanilla" on
        "spigot" "Spigot" on
        "paperspigot" "PaperSpigot" on
        "custom" "Custom" off
        "craftbukkuit" "CraftBukkit" off
        "tacospigot" "TacoSpigot" off)
    ...

`profiles`

All profiles must be stored in a subfolder within the ***conf_path***. This must be written in the same way as the API in the other files.

In this repository this is the minecraft folder.


-----
Configuration options
-----
If you want to adapt the installation or if you have your own repo, you can make the necessary settings in the ***install_config*** file


| variable | default | meaning |
| :--------|:-------:|:-------:|
|installer_url|https://raw.githubusercontent.com/MarioWi/MultiCraft-JAR-Conf/master|Path to Repository| 
|versions_path|$installer_url/versions.csv|Path to csv file with |
|conf_path|minecraft|Path to the profiles within the repository|
|listAPI|vanilla spigot paperspigot custom|List of possible API|
|jar_path|./jar|Path to the Server.Jar files on the Multicraft Server|



How to :    
```cd /path/to/multicraft-folder/```  
```wget https://raw.githubusercontent.com/MarioWi/MultiCraft-JAR-Conf/Testing/install.sh && wget https://raw.githubusercontent.com/MarioWi/MultiCraft-JAR-Conf/Testing/install_config```
```chmod +x install.sh && sudo ./install.sh -o log```


[BACK HOME](https://github.com/MarioWi/MultiCraft-JAR-Conf/blob/master/README.md)
