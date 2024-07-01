#!/bin/bash -
~/.bin/repo init -u 'https://github.com/j1nh0/j1nh0'&&\
~/.bin/repo sync -j$(nproc --ignore=1) --fail-fast&&\
sync&&\
mkdir -vp 'gitc/'&&\
for GITC in $(ls -d ./git/*);do\
 7z u -up1q0r2x1y2z1w2 gitc/$(basename "${GITC#*/}").7z "$GITC"
 sync
done&&\
echo -e "\n\nREPO SYNC PASS!"||\
echo -e "\n\nREPO SYNC FAIL!"
