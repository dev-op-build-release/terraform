#!/bin/bash
sudo apt update
sudo apt install apache2
sudo ufw app list
sudo ufw allow 'Apache'
sudo systemctl start apache2
sudo systemctl restart apache2