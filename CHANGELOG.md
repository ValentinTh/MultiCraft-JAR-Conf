-----
🆕 New release v0.1-beta-final (End-September 2021)
-----

In order to prepare a new organization, it seemed important to create a milestone of the last 4 years evolutions.
Things will change a lot till the next release.

-----
⚠️ Java change AGAIN (June-2021 Update)
-----

Mojang decided to unilaterally move from JAVA 11 > JAVA 16 (yup a jump of 5 versions and the use of a no LTS, ...).     
Since Vanilla 1.17, there is the need to use a new JVM so for now this repo isn't natively compatible with 1.17 (as the 8th of June).

#### NOT READY FOR Vanilla 1.17 " YET " !!!!

Temporary use of a JAVA NO LTS version : /usr/lib/jvm/adoptopenjdk-16-hotspot-jre-amd64/bin/java for the Vanilla 1.17 profile already available.

-----
📌 JAVA Software changes (March-2021 Update)
-----

In order to simplify management and updates this project now relies on : [AdoptOpenJDK](https://adoptopenjdk.net)   
- ```/usr/lib/jvm/adoptopenjdk-11-hotspot-jre-amd64/bin/java``` : for profiles after v1.16
- ```/usr/lib/jvm/adoptopenjdk-8-hotspot-jre-amd64/bin/java``` : for profiles Spigot/PaperSpigot before v1.16.1
- ```/usr/lib/jvm/adoptopenjdk-8-openj9-jre-amd64/bin/java```: for profiles Vanilla before v.1.16.1

=> Clear table of the versions used [HERE](https://github.com/ValentinTh/MultiCraft-JAR-Conf/blob/master/HOW-TO/QUICK-INTRODUCTION.md)

-----
⚠️ Java Versions on servers (December-2020 Update)
-----

Minecraft Vanilla since v1.16.2 no longer supports Java J9 versions, HOTSPOT is used instead.     
PaperSpigot just announced that Java 11 will be mandatory from Minecraft 1.17+ versions.     
