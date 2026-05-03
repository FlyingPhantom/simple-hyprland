#!/bin/bash

# Get the directory of the current script
BASE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")/../../")

# Source helper file
source $BASE_DIR/scripts/installer/helper.sh

log_message "Installation started for utilities section"
print_info "\nStarting utilities setup..."

run_command "sudo pacman -S rofi --noconfirm" "Install Rofi - Application Launcher" "yes" "no"
run_command "cp -r $BASE_DIR/configs/rofi /home/$SUDO_USER/.config/" "Copy Rofi config(s)" "yes" "no"

run_command "yay -S --sudoloop --noconfirm wlogout" "Install Wlogout - Session Manager" "yes" "no"
run_command "cp -r $BASE_DIR/configs/wlogout /home/$SUDO_USER/.config/ && cp -r $BASE_DIR/assets/wlogout /home/$SUDO_USER/.config/assets/" "Copy Wlogout config and assets" "yes" "no"

run_command "yay -S --sudoloop --noconfirm grimblast" "Install Grimblast - Screenshot tool" "yes" "no"

echo "------------------------------------------------------------------------"
