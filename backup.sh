#!/usr/bin/env bash
# Script to backup your own server 📦

# start updating 🔄
sudo apt-get update

# backup command (full backup system) 💾
sudo tar -cvpzf backup.tar.gz --exclude=/home/server/backup.tar.gz --one-file-system /

# your backup file (to see all files) 📂
tar -tvzf backup.tar.gz

# Done ✅
echo "everything is fine"
