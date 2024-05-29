# ------------------------------------------------------
# Install .zshrc
# ------------------------------------------------------

echo -e "${GREEN}"
figlet ".zshrc"
echo -e "${NONE}"
if [ ! -L ~/.zshrc ] && [ -f ~/.zshrc ]; then
    echo "PLEASE NOTE: The script has detected an existing .zshrc file."
fi
if [ -f ~/dotfiles-versions/backups/$datets/.zshrc-old ]; then
    echo "Backup is already available here ~/dotfiles-versions/backups/$datets/.zshrc-old"
fi
if [ ! -L ~/.zshrc ] && [ -f ~/.zshrc ]; then
    bash_confirm="Do you want to replace your existing .zshrc file with the dotfiles .zshrc file?"
    if gum confirm "$bash_confirm" ;then
        rm ~/.zshrc
        _installSymLink .zshrc ~/.zshrc ~/dotfiles/.zshrc ~/.zshrc
    elif [ $? -eq 130 ]; then
            exit 130
    else
        echo "Installation of the .zshrc file skipped."
    fi
else
    bash_confirm="Do you want to install the dotfiles .zshrc file now?"
    if gum confirm "$bash_confirm" ;then
        if [ -L ~/.zshrc ] || [ -f ~/.zshrc ]; then
            rm ~/.zshrc
            echo "Existing .zshrc removed."
        fi
        _installSymLink .zshrc ~/.zshrc ~/dotfiles/.zshrc ~/.zshrc
    elif [ $? -eq 130 ]; then
            exit 130
    else
        echo "Installation of the .zshrc file skipped."
    fi
fi
echo ""
        