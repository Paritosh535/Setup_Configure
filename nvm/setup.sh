echo "Setup NVM Node Version Manager."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
echo "Find version of NVM."
nvm --version
echo -e "1=> latest \n2=> lts"
read option
if [ $option -eq 1 ]
then
    echo "Installation of node Latest Version.."
    nvm install node
    nvm use node
elif [ $option -eq 2 ]
then
    echo "Installation of node Latest LST Version.. "
    nvm install --lts
    nvm use --lts
else
    echo "Invalid Key Press.."
fi
nvm install node
#Install the latest version with nvm install node
#Use the latest version with nvm use node
#Install the latest LTS version with nvm install --lts
#Use the latest LTS verison with nvm use --lts
