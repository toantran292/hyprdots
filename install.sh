#!/bin/bash
version=$(cat .version/name)
source .install/includes/colors.sh
source .install/includes/library.sh
clear

# Set installation mode
mode="live"
if [ ! -z $1 ]; then
    mode="dev"
    echo "IMPORTANT: DEV MODE ACTIVATED. "
    echo "Existing dotfiles folder will not be modified."
    echo "Symbolic links will not be created."
fi
echo -e "${GREEN}"
cat << "EOF"
  ____        _    __ _ _      
 |  _ \  ___ | |_ / _(_) | ___ 
 | | | |/ _ \| __| |_| | |/ _ \
 | |_| | (_) | |_|  _| | |  __/
 |____/ \___/ \__|_| |_|_|\___|
    
EOF
echo -e "${NONE}"

echo "Version: $version"
echo "by toantran292 2024"
echo ""
if [ -d ~/dotfiles ] ;then
    echo "A Dotfiles installation has been detected."
    echo "This script will guide you through the update process of the Dotfiles."
else
    echo "This script will guide you through the installation process of the dotfiles."
fi
echo ""
# source .install/required.sh
# source .install/confirm-start.sh
# source .install/paru.sh
# source .install/updatesystem.sh
# source .install/backup.sh
# source .install/preparation.sh
# source .install/installer.sh
# source .install/remove.sh
# source .install/general.sh
# source .install/packages/general-packages.sh
# source .install/install-packages.sh
# source .install/profile.sh <- remove
# source .install/packages/hyprland-packages.sh
# source .install/install-packages.sh
# source .install/wallpaper.sh
# source .install/displaymanager.sh
# source .install/issue.sh
# source .install/restore.sh
# source .install/keyboard.sh
# source .install/hook.sh
# source .install/vm.sh
# source .install/copy.sh
# source .install/init-pywal.sh
# source .install/hyprland-dotfiles.sh
# source .install/settings.sh
# source .install/apps.sh
# source .install/gtk.sh

# sleep 3
