# How To - A quick Introduction

## You are now on a fresh install of Multicraft?

1. Install JAVA versions
2. Update languages of your panel (optional)
3. Clean the basic JAR & add the new profiles

## Update an existing system

1. Update your JAVA versions
2. Run the JAR scripts

----
💻 JAVA Versions 🔗 [AdoptOpenJDK](https://adoptopenjdk.net)
-----
| Versions | Vanilla | Spigot | PaperSpigot |
| :-------:|:-------:|:------:|:-----------:|
| `After v1.16` | Java 11 : ```/usr/lib/jvm/adoptopenjdk-11-hotspot-jre-amd64/bin/java``` | Java 11 :  ```/usr/lib/jvm/adoptopenjdk-11-hotspot-jre-amd64/bin/java``` | Java 11 :  ```/usr/lib/jvm/adoptopenjdk-11-hotspot-jre-amd64/bin/java``` | 
| `Before v1.16.1`| Java 8 J9 :     ```/usr/lib/jvm/adoptopenjdk-8-openj9-jre-amd64/bin/java``` | Java 8 :    ```/usr/lib/jvm/adoptopenjdk-8-hotspot-jre-amd64/bin/java``` | Java 8 :   ```/usr/lib/jvm/adoptopenjdk-8-hotspot-jre-amd64/bin/java``` |

| My-Jar | My-Bungee | Hardmodded | Templated modpack |
|:------:|:---------:|:----------:|:-----------------:|
| Java 11 : ```/usr/lib/jvm/adoptopenjdk-11-hotspot-jre-amd64/bin/java``` | Java 11 : ```/usr/lib/jvm/adoptopenjdk-11-hotspot-jre-amd64/bin/java``` | Java 8 :    ```/usr/lib/jvm/adoptopenjdk-8-hotspot-jre-amd64/bin/java``` | Java 8 :    ```/usr/lib/jvm/adoptopenjdk-8-hotspot-jre-amd64/bin/java``` |

📋 [[Tutorial] How to install Adopt OpenJDK JAVA versions on Linux servers?](https://adoptopenjdk.net/installation.html?variant=openjdk8&jvmVariant=hotspot#linux-pkg)

----
Add a JAR file manually directly from your panel
-----
On the main menu select : Settings > Update Minecraft > Add or Remove   
Add Files   
- **JAR Filename :** final name of the JAR, ex >> vanilla-1.13.1.jar
- **File URL :** URL from JAR source
- **Conf URL :** URL for JAR configuration (from here)  

-----
🃏 Custom
-----
These models are adapted to accept self-upload JAR (server or bungee).
* [My-Jar.jar](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/custom/my-jar.jar.conf) ⚠️ Made for Java 11
* [My-Bungee.jar](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/custom/my-bungee.jar.conf) ⚠️ Made for Java 11

Special profile for demanding modded servers :
- [Hardmodded.jar](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/custom/hardmodded.jar.conf) ⚠️ Made for Java 8
-----
🕓 Quick add & clean profiles scripts
-----
Run theses bash scripts in the "~/multicraft" directory of your host server !
* [Clean.sh](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/scripts/clean.sh)
* [Custom.sh](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/scripts/custom.sh)
* [Vanilla.sh](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/scripts/vanilla.sh) 
* [Spigot.sh](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/scripts/spigot.sh)
* [PaperSpigot.sh](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/scripts/paperspigot.sh)

How to :    
```cd /path/to/multicraft-folder/```  
```wget URL-of-the-script && sh name-of-the-script.sh```

-----
 💬 Translation script
-----
Run this bash script in the "~/protected/messages/" directory of your php-front-panel ! (It will create a language folder & get the files)

🇫🇷 [Install-Fr.sh](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/translate/Install-fr.sh)  
🇩🇪 [Install-De.sh](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/translate/Install-de.sh)   
🇪🇸 [Install-Es.sh](https://raw.githubusercontent.com/ValentinTh/MultiCraft-JAR-Conf/master/translate/Install-es.sh)
