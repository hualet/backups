#!/bin/bash

export PROJECT_HOME=~/project
export MY_BIN_HOME=~/bin
export JAVA_HOME=/usr/share/jdk1.7.0_40/
export PATH=/opt/Qt5.2.0/5.2.0/gcc/bin:${PATH}:${JAVA_HOME}/bin:${MY_BIN_HOME}/dex2jar-0.0.9.15:${MY_BIN_HOME}/jd-gui-linux
export CLASSPATH=.:${JAVA_HOME}/lib:${JAVA_HOME}/jre/lib

alias ack='ack-grep'
alias cscope_build_c='find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" > cscope.files;
                    cscope -q -R -b -i cscope.files'
alias ec='emacsclient'
alias openhere='xdg-open .'
alias vpn='python ~/goagent/local/proxy.py'
alias ssh_proxy='ssh -qTfnN -D 7070 hualet@vip04.gossh.net -p 443'
alias vps_proxy='ssh -qTfnN -D 7070 hualet@192.157.206.233'
alias update_deepin='sudo apt-get update && sudo apt-get upgrade'
alias copy_file_content='xclip -sel clip <'
alias dss2014='~/project/dss/frame/main.py'

alias hualet2deepin='cp ~/.emacs ~/Backup/hualet-emacs/.emacs ; cp ~/Backup/deepin-emacs/.emacs ~/.emacs'
alias deepin2hualet='cp ~/.emacs ~/Backup/deepin-emacs/.emacs ; cp ~/Backup/hualet-emacs/.emacs ~/.emacs'


# Settings
ulimit -c 0 #unlimited
