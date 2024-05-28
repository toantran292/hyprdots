# ------------------------------------------------------
# Update System
# ------------------------------------------------------

echo -e "${GREEN}"
figlet "System Update"
echo -e "${NONE}"
echo "It's important that your system is up-to-date before you proceed."
if gum confirm "Do you want to update your system with paru now?" ;then
    echo ":: Update started"
    paru
elif [ $? -eq 130 ]; then
    exit 130
else    
    echo ":: System update skipped"
fi
echo
