#!/bin/bash

export PROJECT_HOME=~/project
export MY_BIN_HOME=~/bin
export JAVA_HOME=/usr/share/jdk1.7.0_40/
export PATH=/usr/lib/x86_64-linux-gnu/qt5/bin:${PATH}:${JAVA_HOME}/bin:${MY_BIN_HOME}/dex2jar-0.0.9.15:${MY_BIN_HOME}/jd-gui-linux
export CLASSPATH=.:${JAVA_HOME}/lib:${JAVA_HOME}/jre/lib
export GOPATH=~/Golang/

alias ack='ack-grep'
alias cscope_build_c='find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" > cscope.files;
                    cscope -q -R -b -i cscope.files'
alias ec='emacsclient'
alias openhere='xdg-open .'
#alias vpn='nohup python ~/goagent/local/proxy.py > /dev/null 2>&1'
alias ssh_proxy='ssh -qTfnN -D 7070 hualet@vip04.gossh.net -p 443'
alias update_deepin='sudo apt-get update && sudo apt-get dist-upgrade -y'
alias copy_file_content='xclip -sel clip <'
alias start_vnc = 'x11vnc -shared -forever -usepw -ncache 10 -display :0'

alias pbcopy='xsel -i --clipboard'
alias pbpaste='xsel -o --clipboard'

alias ssh_lilis='ssh lilis@10.0.0.225'
alias ssh_wangjia='ssh wangjia@10.0.1.34'

# Settings
ulimit -c 0 #unlimited

# Utility functions
mount_smb (){
#$1 smb net location $2 mount point
    SMB_USERNAME="wangyaohua"
    SMB_PASSWD="123456"
	local mstat=`mount -l|grep $1`
	local dir_head=`ls $2 2>/dev/null|head -1`
	if [[ -z "$mstat"  &&  -z "$dir_head" ]];then
			echo 'no mount '$1''
			sudo mkdir $2 2>/dev/null
        	sudo mount -t cifs $1 $2 -o \
        	username=$SMB_USERNAME,password=$SMB_PASSWD,domain=WORKGROUP,uid=$UID,forceuid
			echo "Mount Samba service" `mount -l|grep $1`
	else
		echo ok $mstat
	fi	
}
alias mount_people='mount_smb //10.0.0.6/people /media/people'
