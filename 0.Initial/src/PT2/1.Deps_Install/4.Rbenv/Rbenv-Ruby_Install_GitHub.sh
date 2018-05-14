#!/bin/bash

BRANCH=16.04-xenial_xerus
GITREPO=git://github.com/alphaaurigae/rbenv-ruby_install.git
GITREPOROOT=/opt/ownsec/0.Initial/src/PT2/1.Deps_Install/4.Rbenv/rbenv-ruby_install
GITCLONEDIR=/opt/ownsec/0.Initial/src/PT2/1.Deps_Install/4.Rbenv
EXEC1=Rbenv-Ruby_Install_GitHub.sh

mkdir -p $GITCLONEDIR
cd $GITCLONEDIR
git clone -b $BRANCH $GITREPO
cd $GITREPOROOT

# ruby version
sed -i -e 's/RUBYVERSION=2.4.3/RUBYVERSION=2.4.3/g' $EXEC1
# directory of the deps.txt file, default this repo
sed -i -e 's#APTLSTDIR=/home/$USER/rbenv-ruby_install#APTLSTDIR=/opt/ownsec/0.Initial/src/PT2/1.Deps_Install/4.Rbenv/rbenv-ruby_install#g' $EXEC1

./$EXEC1
