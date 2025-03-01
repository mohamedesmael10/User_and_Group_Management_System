#!/bin/bash
while true; do
    clear
    tput setaf 2;  
    echo "=============================="
    echo " User Management"
    echo "=============================="
    echo "1) Preview Users"
    echo "2) Add User"
    echo "3) Delete User"
    echo "4) Change User Password"
    echo "5) Change User UID"
    echo "6) Back to Main Menu"
    echo "=============================="

    echo -n "$(tput setaf 5)Select : $(tput setaf 7)"  
    read -p "Enter your Selection: " user_choice

    case $user_choice in
        1)
            tput setaf 3;  
            echo -e "\nCurrent Users:\n"
            cut -d: -f1 /etc/passwd  
            tput setaf 7;  
            read -p "Press Enter to continue..."  
            ;;
        2)
            read -p "Enter new username: " username
            sudo useradd "$username" && echo "$(tput setaf 2)User $username added successfully (╯✧▽✧)╯$(tput setaf 7)"
            read -p "Press Enter to continue..." 
            ;;
        3)
            read -p "Enter username to delete: " username
            sudo userdel "$username" && echo "$(tput setaf 1)User $username deleted successfully (╯✧▽✧)╯$(tput setaf 7)"
            read -p "Press Enter to continue..." 
            ;;
        4)
            read -p "Enter username to change password: " username
            sudo passwd "$username"
            read -p "Press Enter to continue..." 
            ;;
        5)
            read -p "Enter username to change UID: " username
            read -p "Enter new UID: " new_uid
            sudo usermod -u "$new_uid" "$username" && echo "$(tput setaf 6)User $username UID changed to $new_uid successfully (╯✧▽✧)╯$(tput setaf 7)"
            read -p "Press Enter to continue..." 
            ;;
        6) 
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

