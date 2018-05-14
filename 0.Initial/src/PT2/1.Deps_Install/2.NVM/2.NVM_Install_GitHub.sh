#!/bin/bash

BRANCH=16.04-xenial_xerus
GITREPO=git://github.com/alphaaurigae/nvm_node-npm_install.git
GITREPOROOT=/opt/ownsec/0.Initial/src/PT2/1.Deps_Install/2.NVM/nvm_node-npm_install
GITCLONEDIR=/opt/ownsec/0.Initial/src/PT2/1.Deps_Install/2.NVM
EXEC1=NVM_Install_GitHub_part1.sh
EXEC2=NVM_Install_GitHub_part2.sh

mkdir -p $GITCLONEDIR
cd $GITCLONEDIR
git clone -b $BRANCH $GITREPO
cd $GITREPOROOT

sed -i -e 's/NVM_VERS=v0.33.9/NVM_VERS=v0.33.9/g' $EXEC1
sed -i -e 's#APTLSTDIR=/home/$USER/nvm_node-npm_install#APTLSTDIR=/opt/ownsec/0.Initial/src/PT2/1.Deps_Install/2.NVM/nvm_node-npm_install#g' $EXEC1
sed -i -e 's#NODE_VERS=v8.9.2#NODE_VERS=v8.9.2#g' $EXEC2

./$EXEC1
./$EXEC2