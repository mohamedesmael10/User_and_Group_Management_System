#!/bin/bash

while true; do
    clear
    tput setaf 2; 
    echo "=============================="
    echo " Group Management"
    echo "=============================="
    echo "1) Preview Groups"
    echo "2) Add Group"
    echo "3) Change Group Name"
    echo "4) Back to Main Menu"
    echo "=============================="

    echo -n "$(tput setaf 5)Select : $(tput setaf 7)"
    read -p "Enter your Selection: " group_choice

    case $group_choice in
        1)
            tput setaf 3;  # Set text color to yellow
            echo -e "\nCurrent Groups:\n"
            cut -d: -f1 /etc/group  # Lists all system groups
            tput setaf 7;  # Reset to default color
            read -p "Press Enter to continue..."
            ;;
        2)
            read -p "Enter new group name: " groupname
            sudo groupadd "$groupname" && echo "$(tput setaf 2)Group $groupname added successfully (╯✧▽✧)╯$(tput setaf 7)"
            read -p "Press Enter to continue..."
            ;;
        3)
            read -p "Enter existing group name: " old_group
            read -p "Enter new group name: " new_group
            sudo groupmod -n "$new_group" "$old_group" && echo "$(tput setaf 6)Group $old_group renamed to $new_group successfully (╯✧▽✧)╯$(tput setaf 7)"
            read -p "Press Enter to continue..."
            ;;
        4) 
            tput setaf 6;
            echo "Returning to main menu... ( ･_･)/"
            tput setaf 7;
            break 
            ;;
        *) 
            echo "$(tput setaf 1)\nInvalid Selection (-_-;)・・・$(tput setaf 7)\n"
            read -p "Press Enter to continue..." 
            ;;
    esac

done
