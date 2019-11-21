#!/bin/bash


                                                                                                                      
echo "  _    ______  _   __      __ ______  ____ "
echo " | |  / / __ \/ | / /     / //_/ __ \/ __ )"
echo " | | / / / / /  |/ /_____/ ,< / / / / __ | "
echo " | |/ / /_/ / /|  /_____/ /| / /_/ / /_/ / "
echo " |___/\____/_/ |_/     /_/ |_\____/_____/  "




Function_VonBuild()
{
                cd /home/KOB/
                sudo echo "Build KOB-Von instance in your system"
                sudo git clone https://github.com/hyperledgerkochi/von-network.git
                sudo /home/KOB/von-network/manage rm
                sudo /home/KOB/von-network/manage build

}

Function_VonStart()
{
        sudo /home/KOB/von-network/manage start
}

