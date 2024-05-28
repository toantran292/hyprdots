if [[ "$force_install" == "1" ]] ;then
    echo "Force installation of all packages..."
    _forcePackagesPacman "${packagesPacman[@]}";
    _forcePackagesParu "${packagesParu[@]}";
else
    echo "Install only missing packages..."
    _installPackagesPacman "${packagesPacman[@]}";
    _installPackagesParu "${packagesParu[@]}";

fi
echo