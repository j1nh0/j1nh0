#!/bin/bash -
~/.bin/repo init --depth=0 -u 'https://github.com/j1nh0/j1nh0'&&\
~/.bin/repo sync -c -j$(nproc --ignore=1) --force-sync&&\
sync&&\
echo -e "\n\nREPO SYNC PASS!"||\
echo -e "\n\nREPO SYNC FAIL!"
