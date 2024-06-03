# 📌Server Backup Using MEGA App  

![backup](https://github.com/hyper-ayoub/Backup_Server_MegaApp/assets/133155846/ebdd2cc8-e22a-4de7-95f8-74b29df51a44)![icons8-mega-nz-100](https://github.com/hyper-ayoub/Backup_Server_MegaApp/assets/133155846/4420319c-e117-4269-8464-cfe8e03ef8c1)
![server (1)](https://github.com/hyper-ayoub/Backup_Server_MegaApp/assets/133155846/2a362105-0154-438e-91b8-6db1ea6e7a9e)


This script updates your server, installs necessary packages, and sets up rclone for uploading files to MEGA. Follow the steps below to use the script effectively.

## Prerequisites
- A Linux server
- sudo privileges
- An active MEGA account

## Script Overview

## Step 1: Update and Install Required Packages 📦

                  sudo apt update && sudo apt upgrade -y
                  sudo apt install wget -y

## Step 2: Check Linux Architecture 🖥️
                   lscpu # Choose the appropriate architecture (amd64, arm, armV7, arm64)

## Step 3: Download rclone Based on Architecture 🌐
                      # AMD64
                      wget https://github.com/rclone/rclone/releases/download/v1.59.2/rclone-v1.59.2-linux-amd64.deb

                      # ARM
                      wget https://github.com/rclone/rclone/releases/download/v1.59.2/rclone-v1.59.2-linux-arm.deb

                      # ARMv7
                      wget https://github.com/rclone/rclone/releases/download/v1.59.2/rclone-v1.59.2-linux-arm-v7.deb

                      # ARM64
                      wget https://github.com/rclone/rclone/releases/download/v1.59.2/rclone-v1.59.2-linux-arm64.deb
## Step 4: List Files in Directory 📂

                         ls

## Step 5: Install rclone Package 🛠️

                     sudo dpkg --install rclone-v1.59.2-linux-*.deb          # Replace * with appropriate architecture suffix

## Step 6: Check rclone Version 🔍
                      rclone --version  or rclone -V

## Step 7: Configure MEGA Account in rclone 🔧

                  rclone config # Follow the prompts
                  # Select 'n' for new configuration
                  # Enter any name for the configuration
                  # Choose 30 for MEGA
                  # Enter your MEGA email, password, and other details as prompted
                  # Exit the configuration after setup

## Step 8: Upload Files to MEGA Using rclone ☁️

                   rclone copy -P filename mega: # Replace 'filename' with the name of the file to upload


## Step 9: ✅
🕒 Wait until the upload finishes

🔍 Check the file on MEGA

😊 Enjoy! 🎉






