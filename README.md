# User & Group Management Bash Script

## Project Overview

This Bash script provides a simple, interactive terminal interface for managing users and groups on a Linux system. It allows system administrators to:

- View, add, and delete users
- Change user passwords and UIDs
- Manage groups, including renaming and adding new groups
- Navigate through a user-friendly menu with color-coded text

## Project Structure

```
├── user.sh       # Script for user management
├── group.sh      # Script for group management
├── main.sh       # Main script that integrates user & group management
├── shots/        # Screenshots & demo images
└── README.md     # Documentation
```

## Features

- **Color-coded interface** for better readability
- **Interactive menu** for easy navigation
- **Admin functionalities** using `sudo`
- **Error handling** for invalid inputs
- **Supports both users & groups** management

## Requirements

- Linux-based OS
- Bash shell
- Superuser privileges (`sudo` access)

## Installation & Usage

1. Clone the repository:
   ```sh
   git clone https://github.com/mohamedesmael10/User_and_Group_Management_System-.git
   cd User_and_Group_Management_System-
   ```
2. Give execution permissions:
   ```sh
   chmod +x main.sh user.sh group.sh
   ```
3. Run the script:
   ```sh
   ./main.sh
   ```
   
## Color Code
- **Green** → Success messages
- **Yellow** → Information display
- **Red** → Errors and warnings
- **Purple** → User input prompts


## Screenshots

Here are some screenshots of the script in action:

![Screenshot 1](shots/1.png)
![Screenshot 2](shots/2.png)
![Screenshot 3](shots/3.png)
![Screenshot 4](shots/4.png)
![Screenshot 5](shots/5.png)
![Screenshot 6](shots/6.png)
![Screenshot 7](shots/7.png)
![Screenshot 8](shots/8.png)


## Author

Developed by **Mohamed Esmael** 


