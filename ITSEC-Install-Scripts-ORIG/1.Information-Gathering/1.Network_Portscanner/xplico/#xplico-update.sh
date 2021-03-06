#!/bin/bash

#1i
. /opt/ownsec/ITSEC-Install-Scripts-ORIG/001.functions/all-scripts.sh

GITREPO=https://github.com/xplico/xplico.git
BRANCH=master
GITREPOROOT=/opt/ITSEC/1.Information-Gathering/1.Network_Portscanner/xplico/xplico/xplico
GITCONFDIR=/opt/ITSEC/1.Information-Gathering/1.Network_Portscanner/xplico/xplico/xplico/.git
GITCLONEDIR=/opt/ITSEC/1.Information-Gathering/1.Network_Portscanner/xplico/xplico
DSKTPFLS=/opt/ownsec/ITSEC-Install-Scripts-ORIG/1.Information-Gathering/1.Network_Portscanner/xplico
DSKTPFLSDEST=/home/$USER/.local/share/applications/1.Information-Gathering/1.Network_Portscanner/xplico
DSKTPFL=xplico.desktop
APTLSTDIR=/opt/ownsec/ITSEC-Install-Scripts-ORIG/1.Information-Gathering/1.Network_Portscanner/xplico
#ph1a

echo "${bold}
__  ______  _     ___ ____ ___  
\ \/ /  _ \| |   |_ _/ ___/ _ \ 
 \  /| |_) | |    | | |  | | | |
 /  \|  __/| |___ | | |__| |_| |
/_/\_\_|   |_____|___\____\___/ 
            
UPDATE
${normal}"

GITUPTODATE
if git checkout $BRANCH &&
git fetch origin $BRANCH &&
[ `git rev-list HEAD...origin/$BRANCH --count` != 0 ] &&
git merge origin/$BRANCH
then
    
GITCLONEFUNC

#installroutine


echo "${bold}
UPDATED
${normal}"

else

echo "${bold}
UP TO DATE
${normal}"
	
fi