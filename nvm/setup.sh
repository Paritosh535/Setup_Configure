#curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

nvm --version
echo -e "1=> latest \n2=> lts"
read option
if [ $option -eq 1 ]
then
    echo "if"
#nvm install node
#nvm use node
elif [ $option -eq 2 ]
then
    echo "elseif"
#nvm install --lts
#nvm use --lts
else
    echo "else"
fi

#Install the latest version with nvm install node
#Use the latest version with nvm use node
#Install the latest LTS version with nvm install --lts
#Use the latest LTS verison with nvm use --lts
