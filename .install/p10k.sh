# ------------------------------------------------------
# Install .p10k.zsh
# ------------------------------------------------------

echo -e "${GREEN}"
figlet ".p10k.zsh"
echo -e "${NONE}"
if [ ! -L ~/.p10k.zsh ] && [ -f ~/.p10k.zsh ]; then
    echo "PLEASE NOTE: The script has detected an existing .p10k.zsh file."
fi
if [ -f ~/dotfiles-versions/backups/$datets/.p10k.zsh-old ]; then
    echo "Backup is already available here ~/dotfiles-versions/backups/$datets/.p10k.zsh-old"
fi
if [ ! -L ~/.p10k.zsh ] && [ -f ~/.p10k.zsh ]; then
    bash_confirm="Do you want to replace your existing .p10k.zsh file with the dotfiles .p10k.zsh file?"
    if gum confirm "$bash_confirm" ;then
        rm ~/.p10k.zsh
        _installSymLink .p10k.zsh ~/.p10k.zsh ~/dotfiles/.p10k.zsh ~/.p10k.zsh
    elif [ $? -eq 130 ]; then
            exit 130
    else
        echo "Installation of the .p10k.zsh file skipped."
    fi
else
    bash_confirm="Do you want to install the dotfiles .p10k.zsh file now?"
    if gum confirm "$bash_confirm" ;then
        if [ -L ~/.p10k.zsh ] || [ -f ~/.p10k.zsh ]; then
            rm ~/.p10k.zsh
            echo "Existing .p10k.zsh removed."
        fi
        _installSymLink .p10k.zsh ~/.p10k.zsh ~/dotfiles/.p10k.zsh ~/.p10k.zsh
    elif [ $? -eq 130 ]; then
            exit 130
    else
        echo "Installation of the .p10k.zsh file skipped."
    fi
fi
echo ""
        