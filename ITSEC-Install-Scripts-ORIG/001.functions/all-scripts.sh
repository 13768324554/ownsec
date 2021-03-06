#!/bin/bash

#############################################################
##### START - generic

BINDIR=/usr/local/bin

# color 

bold=$(tput bold)
normal=$(tput sgr0)

RED1='\033[91m'
ORANGE1='\033[93m'
GREEN1='\e[0;32m'
BLUE1='\033[94m'
CYAN1='\033[96m'
WHITE1='\033[97m'
YELLOW1='\033[93m'
MAGENTA1='\033[95m'
CYAN='\e[0;36m'
GREEN='\e[0;32m'
lightgreen='\e[0;32m'
WHITE='\e[0;37m'
RED='\e[0;31m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
PURPLE='\e[0;35m'
ORANGE='\e[38;5;166m'

#END color

# END generic
############################


#############################################################
##### START - git repository related functions

# clean up repo for update
GITRESET () {
	git clean -f
	git fetch origin
	git reset --hard origin/$BRANCH
	git pull
}
# END clean up repo

# git clone 
GITCLONEFUNC () {
mkdir -p $GITCLONEDIR
cd $GITCLONEDIR
git clone -b $BRANCH $GITREPO
cd $GITREPOROOT
}
# END git clone 

# init submodules
GITSBMDLINIT () {
	git submodule init
	git submodule update --recursive
	sudo updatedb && sudo ldconfig
}
# END init submodules


# END - git repository related functions
############################


#############################################################
##### START - dependency things

# pip install requirements 
PIP2INSTREQ () {
sudo -H pip2 install -r requirements.txt 
sudo updatedb
sudo ldconfig
}
PIP3INSTREQ () {
sudo -H pip3 install -r requirements.txt 
sudo updatedb
sudo ldconfig
}
PIPINSTREQ () {
sudo -H pip install -r requirements.txt 
sudo updatedb
sudo ldconfig
}
# END pip install requirements 

# END - dependency things
############################


#############################################################
##### START - install script - bin handling

# chmod bin
CHMODXEX1  () {
chmod +x $GITREPOROOT/$EXECUTEABLE1
}
CHMODXEX2  () {
chmod +x $GITREPOROOT/$EXECUTEABLE2
}
CHMODXEX3  () {
chmod +x $GITREPOROOT/$EXECUTEABLE3
}
# END chmod bin

# symlink bin
SYMLINKEX2TO1  () {
sudo rm -f $BINDIR/$EXECUTEABLE2
sudo ln -s $GITREPOROOT/$EXECUTEABLE1 $BINDIR/$EXECUTEABLE2
}

SYMLINKEX1TO1  () {
sudo rm -f $BINDIR/$EXECUTEABLE1
sudo ln -s $GITREPOROOT/$EXECUTEABLE1 $BINDIR/$EXECUTEABLE1
}

# END symlink bin

# copy .desktop
CPDESKTFL  () {
mkdir -p $DSKTPFLSDEST
rm -f $DSKTPFLSDEST/$DSKTPFL
cp $DSKTPFLS/$DSKTPFL $DSKTPFLSDEST/$DSKTPFL
}
# END copy .desktop

# END  - install script - bin handling
############################


#############################################################
##### START - updatescript things

### updatescript
GITUPTODATE  () {
if [ ! -d $GITCONFDIR ]

then

GITCLONEFUNC

else

echo "${bold}REPO EXISTS, skip clone...${normal}"

fi


}
# END  - updatescript things
############################




