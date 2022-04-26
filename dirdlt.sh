#! /bin/bash

##   Directory Delete(dirdlt.sh)   :       MADE BY SPHINX!!!
##   Author     :       Jed Villanueva-Sphinx 
##   Version    :       1.0
##   Github     :       https://github.com/LOLsphinx

##   THANKS TO :
##   Jed Villanueva - https://www.facebook.com/jed.villanueva.330/
##   IT's ME - https://twitter.com/Jenz2005
##   Jed Villanueva - https://www.facebook.com/profile.php?id=100078029772346


## If you Copy Then Give the credits :))

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"


clear
cd ~
pwd
ls
echo -n "${BLACKBG}${CYAN}Where do u want me to go? ${RED}look at the Directories above and navigate wherever you want to go: ${RESETBG}"
read go1
clear
sleep 2

cd $go1
clear
pwd
echo -n "${RESETBG}${WHITE}All Directory: ${BLACKBG}${RED}"[1]goback"${RESETBG}${WHITEBG}${BLACK} " 
ls
sleep 1
echo "${RESETBG}${CYAN}Select an option:${RESETBG}${RED} ${RESETBG}"
read lods

sleep 2

if [ "$lods" = "1" ]
then
sleep 2
cd
cd
fi

if [ "$lods" = "goback" ]
then
sleep 2
cd
cd
fi




echo -n "${RESETBG}${CYAN}Enter filename to check: "
read fname

if [[ -f "$fname" ]]
then
   echo "${RESETBG}${RED}${BLACKBG}     $fname exists..."
else
    echo "${RESETBG}${BLACKBG}${RED}   $fname doesn't exist.."
    sleep 2
    echo "There's no $fname Directory!"
    sleep 3
    echo "We're heading back to your Main Directory!.."
    sleep 2
    clear
    echo "${RESETBG}${BLACKBG}${RED}Sorry we can't really see the $fname Directory, Terminal is going to close..."
    sleep 3
    cd
    exit

fi
sleep 2
clear
ls
echo -n "${RESETBG}${BLACKBG}${WHITE} The $fname filename exists what do u want to do with it [delete], [view]: "
read do1

if [ "$do1" = "delete" ]
then
    echo -n "${RESETBG}${GREEN}${WHITE} do u really want to delete it [yes] or [no]: "
    read do2
fi

if [ "$do2" = "yes" ]
then
    echo "We're going to delete $fname directory.."
    sleep 1
    rm -rf $fname
    sleep 2

    echo "[Deleted...]"
    clear
    sleep 2
    echo "Heading back to your Main Directory..."
    cd
fi

if [ "$do1" = "view" ]
then
    echo "We're goin' to view $fname directory..."
    sleep 2
    echo "Viewed: "cd $fname 
    sleep 1
    pwd
    sleep 2
    ls
    echo "WARNING!!  You have only 15 seconds to view it.."
    sleep 14
    clear
    cd 

fi

