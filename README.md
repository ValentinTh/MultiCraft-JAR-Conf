MultiCraft-JAR Conf
=====
This project has the goal to make some time gains to many of us.     
Quickly find a multicraft configuration in the list of JAR profiles!     

You will find here, panel translations (🇫🇷🇩🇪🇪🇸), serveur profiles (Vanilla, Spigot, PaperMC, Custom), script setup helpers, etc

Methods to start :

- [[HOW-TO] First Steps](https://github.com/ValentinTh/MultiCraft-JAR-Conf/blob/master/HOW-TO/QUICK-INTRODUCTION.md)     
- [[HOW-TO] Panel & languages (list & install)](https://github.com/ValentinTh/MultiCraft-JAR-Conf/blob/master/HOW-TO/LANGUAGES.md)    
- [[HOW-TO] Server profiles (list & install)](https://github.com/ValentinTh/MultiCraft-JAR-Conf/blob/master/HOW-TO/PROFILES.md)   

-----
🗓 Minecraft versions available
-----

| Versions | ✅ Vanilla | ✅ Spigot | 🔨 PaperSpigot |
| :--------|:----------:|:---------:|:---------------:|
| Edited by : |[Mojang](https://mojang.com)|[Spigot](https://spigotmc.org)|[PaperMC](https://papermc.io)| 
| `Last`| 1.16.5 | 1.16.2 | 1.16.5 |
| `First`| 1.4.7 | 1.4.7 | 1.12.2 |

# ChangeLog

-----
⚠️ Java change AGAIN (June-2021 Update)
-----

Mojang decided to unilaterally move from JAVA 11 > JAVA 16 (yup a jump of 5 versions and the use of a no LTS, ...).     
Since Vanilla 1.17, there is the need to use a new JVM so for now this repo isn't natively compatible with 1.17 (as the 8th of June).

## NOT READY FOR Vanilla 1.17 " YET " !!!!

-----
📌 JAVA Software changes (March-2021 Update)

In order to simplify management and updates this project now relies on : [AdoptOpenJDK](https://adoptopenjdk.net)   
- ```/usr/lib/jvm/adoptopenjdk-11-hotspot-jre-amd64/bin/java``` : for profiles after v1.16
- ```/usr/lib/jvm/adoptopenjdk-8-hotspot-jre-amd64/bin/java``` : for profiles Spigot/PaperSpigot before v1.16.1
- ```/usr/lib/jvm/adoptopenjdk-8-openj9-jre-amd64/bin/java```: for profiles Vanilla before v.1.16.1

=> Clear table of the versions used [HERE](https://github.com/ValentinTh/MultiCraft-JAR-Conf/blob/master/HOW-TO/QUICK-INTRODUCTION.md)

-----
⚠️ Java Versions on servers (December-2020 Update)

Minecraft Vanilla since v1.16.2 no longer supports Java J9 versions, HOTSPOT is used instead.     
PaperSpigot just announced that Java 11 will be mandatory from Minecraft 1.17+ versions.     



-----
⚠️⚠️⚠️ You find a bug? Want to contribute?
-----
Don't be afraid to open an issue!    
Or to send a patch proposal :D    

-----
NB : JAR files, links or anything else of the textual content are not mine but property of respective editors.
© 2017 - 2021
