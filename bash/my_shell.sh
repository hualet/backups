#!/bin/bash

export MY_BIN_HOME=~/bin
export JAVA_HOME=/usr/share/jdk1.7.0_40/
export PATH=${PATH}:${JAVA_HOME}/bin:${MY_BIN_HOME}/dex2jar-0.0.9.15:${MY_BIN_HOME}/jd-gui-linux
export CLASSPATH=.:${JAVA_HOME}/lib:${JAVA_HOME}/jre/lib

alias ack='ack-grep'
alias cscope_build_c='find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" > cscope.files;
                    cscope -q -R -b -i cscope.files'
alias vpn='python3 ~/goagent/local/proxy.py'
alias update_deepin='sudo apt-get update && sudo apt-get upgrade'

alias hualet2deepin='cp ~/.emacs ~/Backup/hualet-emacs/.emacs ; cp ~/Backup/deepin-emacs/.emacs ~/.emacs'
alias deepin2hualet='cp ~/.emacs ~/Backup/deepin-emacs/.emacs ; cp ~/Backup/hualet-emacs/.emacs ~/.emacs'

alias copy_dss='sudo cp -r  ~/project/deepin-system-settings/ /usr/share/'
alias copy_dss_dir='sudo cp -r  ~/project/deepin-system-settings/dss /usr/share/deepin-system-settings/'
alias copy_bluetooth='sudo cp -r  ~/project/deepin-system-settings/modules/bluetooth/ /usr/share/deepin-system-settings/modules'
alias copy_grub2='sudo cp -r  ~/project/deepin-system-settings/modules/grub2/ /usr/share/deepin-system-settings/modules'
alias copy_mount_media='sudo cp -r  ~/project/deepin-system-settings/modules/mount_media/ /usr/share/deepin-system-settings/modules'
alias trayicon='python /usr/share/deepin-system-tray/src/trayicon.py'
