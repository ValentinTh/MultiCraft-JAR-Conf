#!/usr/bin/env bash

# e - script stops on error
# u - error if undefined variable
# o pipefail - script fails if command piped fails
#set -euo pipefail

# INCLUDES
source ./install_config

run() {
    local dry_run=${dry_run:-false}
    local output=${output:-/dev/tty2}

    while getopts d:o: option
    do
        case "${option}"
            in
            d) dry_run=${OPTARG};;
            o) output=${OPTARG};;
            *);;
        esac
    done

    log INFO "DRY RUN? $dry_run" "$output"

    check_sudo

    install-dialog

    dialog-welcome

    # if no install_conf download default
    if [ ! -f "./install_config" ]; then
        wget "https://raw.githubusercontent.com/MarioWi/MultiCraft-JAR-Conf/master/install_config"
        source ./install_config
    fi

    check-file "install_config"

    check-file "versions.csv"

    # for futere development (updating the profiles)
    # check-file "update.sh"

    log INFO "CHOOSE API" "$output"
    dialog-choose-api api
    choicesAPI=$(cat api) && rm api

    log INFO "API CHOOSEN: $choicesAPI" "$output"
    APIs="$(extract-choosed-APIs "$choicesAPI" "versions.csv")"

    log INFO "CHOOSE VERSIONS" "$output"
    dialog-choose-versions "vers" "$choicesAPI" "$APIs"

    extract-choosed-versions "versions.csv" "choosedVersions.csv"

    log INFO "CHOOSE GROUP:USER" "$output"
    dialog-choose-user "user"

    log INFO "CHOOSE RIGHTS" "$output"
    dialog-choose-rights "rights"

    check_log4j_patch

    log INFO "INSTALL CHOOSED VERSIONS" "$output"
    dialog-install-confs
    install_choosed_versions "choosedVersions.csv"

    cleanup

    dialog-installed

    clear

}

log() {
    local -r level=${1:?}
    local -r message=${2:?}
    local -r output=${3:?}
    local -r timestamp=$(date +"%Y-%m-%d %H:%M:%S")

    echo -e "${timestamp} [${level}] ${message}" >>"$output"
}

check_sudo(){
    if [[ $EUID -ne 0 ]]; then
        echo "This script must be run as root" 
        exit 1
    fi
}

check-file(){
    log INFO "CHECK IF $1 ALREADY EXISTS" "$output"
    if [ ! -f ${1:?} ]
    then
        download-file "$1"
        log INFO "$1 DOWNLOADED" "$output"
    fi
}

download-file(){
    curl "$installer_url/$1" > "./$1"
    log INFO "$1 DOWNLOADED AT: $installer_url/$1" "$output"
}

install-dialog() {

    command -v "dialog" >/dev/null 2>&1
    if [[ $? -ne 0 ]]; then
        sudo apt-get update -y && sudo apt-get upgrade -y
        sudo apt-get install dialog -y
    fi
}

dialog-welcome() {
    dialog --backtitle "Multicraft - JAR Config" --title "Welcome!" --msgbox "Welcome to the Multicraft JAR-Conf downloader.\n" 10 60
}

dialog-choose-api(){
    local file=${1:?}

    apis=(
        "vanilla" "Vanilla" on
        "spigot" "Spigot" on
        "paperspigot" "PaperSpigot" on
        "custom" "Custom" off)

    dialog --backtitle "Multicraft - JAR Config" --title "Choose API" --checklist "You can now choose the groups of APIs you want to install, according to your CSV file.\n\nPress SPACE to select and ENTER to validate your choices." 0 0 0 "${apis[@]}" 2> "$file"

    exitstatus=$?
    if [ ! $exitstatus = 0 ]; then
        log INFO "CANCELD CHOOSE API" "$output"
        cleanup
        exit 1
    fi
}

extract-choosed-APIs(){
    local -r choices=${1:?}
    local -r versions_path=${2:?}

    selection="^$(echo $choices | sed -e 's/ /,|^/g'),"
    lines=$(grep -E "$selection" "$versions_path")

    echo "$lines"
}

dialog-choose-versions(){
    local file="${1:?}"
    local -r choices="${2:?}"
    local -r APIs="${3:?}"

    array=()

    for api in $choices; do
        unset array[@]
        i=1 #Index counter for adding to array

        selection="^$(echo $api | sed -e 's/ /,|^/g'),"
        lines=$(echo "$APIs" | grep -w "$api")
        for k in $lines; do
            version=$(echo $k | awk -F ',' '{print $2;}')
            array[ $i ]=$version
            # check if custom API
            if [[ "$api" == "custom" ]]; then
                # check if jar installed
                if [ ! -f "$jar_path/$version.jar" ]; then
                    # check if conf installed
                    if [ ! -f "$jar_path/$version.jar.conf" ]; then
						array[ $i + 1]=$version.jar.conf
						array[ ($i + 2) ]=off
					else
						array[ $i + 1]="$version.jar.conf (conf existing)"
						array[ ($i + 2) ]=off
					fi
				else
                    # check if conf installed
                    if [ ! -f "$jar_path/$version.jar.conf" ]; then
						array[ $i + 1]="$version.jar.conf (jar existing)"
						array[ ($i + 2) ]=on
					else
						array[ $i + 1]="$version.jar.conf (jar & conf existing)"
						array[ ($i + 2) ]=off
					fi
				fi
			else
                # check if jar installed
                if [ ! -f "$jar_path/$api-$version.jar" ]; then
                    # check if conf installed
                    if [ ! -f "$jar_path/$api-$version.jar.conf" ]; then
						array[ $i + 1]=$api-$version.jar.conf
						array[ ($i + 2) ]=off
					else
						array[ $i + 1]="$api-$version.jar.conf (conf existing)"
						array[ ($i + 2) ]=off
					fi
				else
                    # check if conf installed
                    if [ ! -f "$jar_path/$api-$version.jar.conf" ]; then
						array[ $i + 1]="$api-$version.jar.conf (jar existing)"
						array[ ($i + 2) ]=on
					else
						array[ $i + 1]="$api-$version.jar.conf (jar & conf existing)"
						array[ ($i + 2) ]=off
					fi
				fi
			fi
            (( i=($i+3) ))
        done

        dialog --backtitle "Multicraft - JAR Config" --title "Choose Version for $api" --checklist "You can now choose the groups of Versions you want to install for $api, according to your own CSV file.\n\nPress SPACE to select and ENTER to validate your choices." 0 0 0 "${array[@]}" 2> "$api"
        versions=$(cat $api)
        if [ "$versions" = "" ]; then
            rm $api
        fi

        log INFO "VERSIONS CHOOSEN FOR: $api" "$output"

        exitstatus=$?
        if [ ! $exitstatus = 0 ]; then
            log INFO "CANCELD CHOOSE VERSIONS" "$output"
            cleanup
            exit 1
        fi

    done
}

extract-choosed-versions(){
    local -r versions_path=${1:?}
    local file="${2:?}"

    for APIs in $listAPI; do

        if test -f "$APIs"; then
            for server in APIs; do
                versions=$(cat  $APIs)

                selectionAPI="^$(echo $APIs | sed -e 's/ /,|^/g'),"
                linesAPI=$(grep -E "$selectionAPI" "$versions_path")

                selectionVers="$(echo $versions | sed -e 's/ /,|/g'),"
                linesVers=$(echo "$linesAPI" | grep -E "$selectionVers")
                echo "$linesVers" >> $file

                rm $APIs
            done
        fi
    done

}

dialog-choose-user(){
    local file="${1:?}"
    user=(
        "minecraft" "minecraft:minecraft (Standard)" on
        "nobody" "nobody:users (Unraid-Docker)" off
        "custom" "Custom" off)

    dialog --backtitle "Multicraft - JAR Config" --title "Choose Group and User" --radiolist "You can now select the group and the user who should own the conf files.\n\nPress SPACE to select and ENTER to validate your choices." 0 0 0 "${user[@]}" 2> "$file"

    exitstatus=$?
    if [ ! $exitstatus = 0 ]; then
        log INFO "CANCELD CHOOSE USER" "$output"
        cleanup
        exit 1
    fi

    choice=$(cat  $file)
    case "$choice" in

        minecraft)  echo -n "minecraft:minecraft" > "$file" ;;

        nobody)     echo -n "nobody:users" > "$file" ;;

        custom)     dialog-insert-user "user" ;;

        *)          log ERROR "WRONG INPUT AT CHOOSE USER" "$output" 
                    dialog-choose-user "$file" ;;
    esac
}

dialog-insert-user(){
    local file="${1:?}"

    dialog --backtitle "Multicraft - JAR Config" --title "Insert Group and User" --inputbox "You can now enter the group and the user who should own the conf files." 0 0 "group:user" 2> "$file"

    exitstatus=$?
    if [ ! $exitstatus = 0 ]; then
        log INFO "CANCELD INSERT USER" "$output"
        cleanup
        exit 1
    fi
}

dialog-choose-rights(){
    local file="${1:?}"
    rights=(
        "755" "r xr xr x" on
        "777" "rwxrwxrwx" off
        "custom" "Custom" off)

    dialog --backtitle "Multicraft - JAR Config" --title "Choose Rights" --radiolist "You can now select the rights to be set for the conf files.\n\nPress SPACE to select and ENTER to validate your choices." 0 0 0 "${rights[@]}" 2> "$file"

    exitstatus=$?
    if [ ! $exitstatus = 0 ]; then
        log INFO "CANCELD CHOOSE RIGHTS" "$output"
        cleanup
        exit 1
    fi

    choice=$(cat  $file)
    if [ "$choice" = "custom" ]; then
        dialog-insert-rights "rights"
    fi
}

dialog-insert-rights(){
    local file="${1:?}"

    dialog --backtitle "Multicraft - JAR Config" --title "Insert Rights" --inputbox "You can now enter the rights which should be set on the conf files.\nGroupUserOther" 0 0 "GUO" 2> "$file"

    exitstatus=$?
    if [ ! $exitstatus = 0 ]; then
        log INFO "CANCELD INSERT RIGHTS" "$output"
        cleanup
        exit 1
    fi

}

check_log4j_patch(){
    if [ ! -f "$jar_path/log4j2-17-111.xml" ] || [ ! -f "$jar_path/log4j2-112-116.xml" ]; then
        dialog --backtitle "Multicraft - JAR Config" --title "log4j - Patch" --yesno "It seems like you don't have the files for the log4j fix.\n\nThis is strongly advised.\n\n\nThis is absolutely necessary for versions between 1.7 and 1.17.\n\nWould you like to copy the files now?" 13 60
        
        # Get exit status
        # 0 means user hit [yes] button.
        # 1 means user hit [no] button.
        # 255 means user hit [Esc] key.
        dialog_status=$?

        case $dialog_status in
            0)  # copy log4j2-17-111.xml
                wgetOut=$(wget -N -P $jar_path "$installer_url/$conf_path/log4j-patch/log4j2-17-111.xml" 2>&1)
                chownOut=$(sudo chown $user "$jar_path/log4j2-17-111.xml" 2>&1)
                chmodOut=$(sudo chmod $rights "$jar_path/log4j2-17-111.xml" 2>&1)
                log INFO "WGET: --> $wgetOut" "$output"
                log INFO "CHOWN: --> $chownOut" "$output"
                log INFO "CHMOD: --> $chmodOut" "$output"
                # copy log4j2-112-116.xml
                wgetOut=$(wget -N -P $jar_path "$installer_url/$conf_path/log4j-patch/log4j2-112-116.xml" 2>&1)
                chownOut=$(sudo chown $user "$jar_path/log4j2-112-116.xml" 2>&1)
                chmodOut=$(sudo chmod $rights "$jar_path/log4j2-112-116.xml" 2>&1)
                log INFO "WGET: --> $wgetOut" "$output"
                log INFO "CHOWN: --> $chownOut" "$output"
                log INFO "CHMOD: --> $chmodOut" "$output";;
            # 1) echo "no";;
            # 255) echo "[EXC]";;
        esac
    fi
}

dialog-install-confs() {
    dialog --backtitle "Multicraft - JAR Config" --title "Let's go!" --msgbox "The choosed confs will now be installed." 13 60
}

install_choosed_versions(){
    local -r versions=${1:?}

    user=$(cat user)
    rights=$(cat rights)

    while IFS="," read -r server version java confVersion
    do
        if [ "$dry_run" = false ]; then
            if [[ "$server" == "custom" ]]; then
                wgetOut=$(wget -N -P $jar_path "$installer_url/$conf_path/$server/$version.jar.conf" 2>&1)
                chownOut=$(sudo chown $user "$jar_path/$version.jar.conf" 2>&1)
                chmodOut=$(sudo chmod $rights "$jar_path/$version.jar.conf" 2>&1)
                log INFO "WGET: --> $wgetOut" "$output"
                log INFO "CHOWN: --> $chownOut" "$output"
                log INFO "CHMOD: --> $chmodOut" "$output"
                sed -i -E "s|^configSource\s=\s(\S*)|configSource = $installer_url/$conf_path/$server/$version.jar.conf|" "$jar_path/$version.jar.conf"
            else
                wgetOut=$(wget -N -P $jar_path "$installer_url/$conf_path/$server/$server-$version.jar.conf" 2>&1)
                chownOut=$(sudo chown $user "$jar_path/$server-$version.jar.conf" 2>&1)
                chmodOut=$(sudo chmod $rights "$jar_path/$server-$version.jar.conf" 2>&1)
                log INFO "WGET: --> $wgetOut" "$output"
                log INFO "CHOWN: --> $chownOut" "$output"
                log INFO "CHMOD: --> $chmodOut" "$output"
                sed -i -E "s|^configSource\s=\s(\S*)|configSource = $installer_url/$conf_path/$server/$server-$version.jar.conf|" "$jar_path/$server-$version.jar.conf"
            fi
        else
            fake_install "$server-$version.jar.conf"
        fi
    # no headerline in versions.csv
    # done < "$versions"
    done < <(tail -n +2 $versions)
}

fake-install() {
    echo "$1 fakely installed!" >> "$output"
}

cleanup(){
    log INFO "FINAL CLEANUP" "$output"
    rm choosedVersions.csv > /dev/null 2>&1
    rm user > /dev/null 2>&1
    rm rights > /dev/null 2>&1
}

dialog-installed() {
    dialog --backtitle "Multicraft - JAR Config" --title "Congratulation!" --msgbox "Everything is installed." 13 60
}

run "$@"
