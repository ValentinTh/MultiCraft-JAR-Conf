MultiCraft-JAR Conf
=====
To quickly find multicraft configurations list of server JAR !

->> [Wiki Install Help Tutorials](https://github.com/ValentinTh/MultiCraft-JAR-Conf/wiki)

-----
Versions available
-----

| Versions | ✅ Vanilla | ✅ Spigot | 🔨 PaperSpigot |
| :--------|:----------:|:---------:|:--------------:|
| Edited by : |[Mojang](https://mojang.com)|[Spigot](https://spigotmc.org)|[PaperMC](https://papermc.io)| 
| `Last`| 1.16.5 | 1.16.2 | 1.16.5 |
| `First`| 1.4.7 | 1.4.7 | 1.12.2 |

-----
⚠️ Java Versions on servers (2020 Update)
-----

Minecraft Vanilla since v1.16.2 no longer supports Java J9 versions.     
PaperSpigot announced that Java 11 will be mandatory from Minecraft 1.17+ versions.     

In order to simplify management and updates we use : [AdoptOpenJDK](https://adoptopenjdk.net)   
- ```/usr/lib/jvm/adoptopenjdk-11-hotspot-jre-amd64/bin/java``` : for profiles after v1.16
- ```/usr/lib/jvm/adoptopenjdk-8-hotspot-jre-amd64/bin/java``` : for profiles Spigot/PaperSpigot before v1.16.1
- ```/usr/lib/jvm/adoptopenjdk-8-openj9-jre-amd64/bin/java```: for profiles Vanilla before v.1.16.1

[[Tutorial] How to install Adopt OpenJDK JAVA versions on Linux servers?](https://adoptopenjdk.net/installation.html?variant=openjdk8&jvmVariant=hotspot#linux-pkg)

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

-----
⚠️⚠️⚠️ You find a bug ?
-----
Don't be afraid to open an issue !    
Or send a patch proposal :D    

-----
NB : JAR files, links or anything else of the textual content are not mine but property of respective editors.
© 2017 - 2021
