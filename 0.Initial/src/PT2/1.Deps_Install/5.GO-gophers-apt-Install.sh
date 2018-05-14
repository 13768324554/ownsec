#!/bin/bash

BRANCH=16.04-xenial_xerus
GITREPO=git://github.com/alphaaurigae/go_gophersPPA-install.git
GITREPOROOT=/opt/ownsec/0.Initial/src/PT2/1.Deps_Install/4.Rbenv/go_gophersPPA-install
GITCLONEDIR=/opt/ownsec/0.Initial/src/PT2/1.Deps_Install/4.Rbenv
EXEC1=Rbenv-Ruby_Install_GitHub.sh

mkdir -p $GITCLONEDIR
cd $GITCLONEDIR
git clone -b $BRANCH $GITREPO
cd $GITREPOROOT

# gopath
sed -i -e 's#GOPATH="/home/$USER/go#GOPATH="/home/$USER/go#g' $EXEC1

# goroot
sed -i -e 's#GOROOT="/usr/lib/go-1.9#GOROOT="/usr/lib/go-1.9#g' $EXEC1


./$EXEC1
