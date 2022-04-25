#! /bin/bash

clear
pwd
ls
sleep 1

echo -n "Enter filename to check: "
read fname

if [[ -f "$fname" ]]
then
   echo "$fname exists..."
else
    echo "$fname doesn't exist.."
    sleep 2
    echo "There's no $fname Directory!"
    sleep 3
    echo "We're heading back to your Main Directory!.."
    sleep 2
    clear
    echo "Sorry we can't really see the $fname Directory, Terminal is going to close..."
    sleep 3
    cd
    exit

fi
sleep 2
clear
ls
echo -n "The $fname filename exists what do u want to do with it [delete], [view]: "
read do1

if [ "$do1" = "delete" ]
then
    echo -n "do u really want to delete it [yes] or [no]: "
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

