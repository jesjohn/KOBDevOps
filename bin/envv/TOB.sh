#!/bin/bash


                                                              
                                                              
echo "   ________         ____             ____              __  "
echo "  /_  __/ /_  ___  / __ \_________ _/ __ )____  ____  / /__"
echo "   / / / __ \/ _ \/ / / / ___/ __  / __  / __ \/ __ \/ //_/"
echo "  / / / / / /  __/ /_/ / /  / /_/ / /_/ / /_/ / /_/ / ,<   "
echo " /_/ /_/ /_/\___/\____/_/   \__, /_____/\____/\____/_/|_|  "
echo "                           /____/                          "





Function_TOBBuild()
{
                sudo echo "Setting-up TOB instance in your system?"
                sudo git clone https://github.com/bcgov/TheOrgBook.git
                sudo wget --no-proxy https://github.com/openshift/source-to-image/releases/download/v1.1.14/source-to-image-v1.1.14-874754de-linux-amd64.tar.gz
                sudo tar -xvzf source-to-image-v1.1.14-874754de-linux-amd64.tar.gz
                sudo mv s2i sti /usr/local/bin/
                sudo /home/KOB/TheOrgBook/docker/manage rm
                sudo /home/KOB/TheOrgBook/docker/manage build
                sudo sed -i -e 's/- 3000/- 3100/g' /home/KOB/TheOrgBook/docker/docker-compose.yml


}

Function_TobStart()
{
sudo read -p "Do you want to start TOB instance in your system?" reply
        if [ "$reply" = "y" ] || [ "$reply" = "Y" ] || [ "$reply" = "yes" ] || [ "$reply" = "YES" ];
        then
        sudo /home/KOB/TheOrgBook/docker/manage start seed=the_org_book_0000000000000000000
        fi
}

