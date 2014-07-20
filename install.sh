#!/usr/bin/env bash

# install lua-daemon
cp -a lua-daemon lua-daemon_compile
cd lua-daemon_compile
make clean
./configure
make all
sudo cp src/.libs/daemon.so /usr/local/lib/lua/5.1/
sudo ldconfig
cd -

# install lualogging
sudo luarocks install lualogging

# install bamboo-log
cd ~/GIT
git clone git://github.com/daogangtang/bamboo-log.git
sudo ln -sf ~/GIT/bamboo-log/bamboo-log.lua /usr/local/share/lua/5.1/

echo "End OK."

