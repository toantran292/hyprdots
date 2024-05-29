# ------------------------------------------------------
# Check if paru is installed
# ------------------------------------------------------
echo -e "${GREEN}"
figlet "paru"
echo -e "${NONE}"
if sudo pacman -Qs paru > /dev/null ; then
    echo ":: paru is already installed!"
else
    echo ":: paru is not installed. Starting the installation!"
    _installPackagesPacman "base-devel"
    SCRIPT=$(realpath "$0")
    temp_path=$(dirname "$SCRIPT")
    echo $temp_path
    git clone https://aur.archlinux.org/paru-bin.git ~/paru-bin
    cd ~/paru-bin
    makepkg -si
    cd $temp_path
    echo ":: paru has been installed successfully."
fi
echo ""