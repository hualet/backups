#!/bin/bash

export PROJECT_HOME=~/project
export MY_BIN_HOME=~/bin
export JAVA_HOME=/usr/share/jdk1.7.0_40/
export PATH=/opt/Qt5.3.0/5.3/gcc/bin:/usr/lib/i386-linux-gnu/qt5/bin:${PATH}:${JAVA_HOME}/bin:${MY_BIN_HOME}/dex2jar-0.0.9.15:${MY_BIN_HOME}/jd-gui-linux
export CLASSPATH=.:${JAVA_HOME}/lib:${JAVA_HOME}/jre/lib
export GOPATH=~/Golang/

alias ack='ack-grep'
alias cscope_build_c='find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" > cscope.files;
                    cscope -q -R -b -i cscope.files'
alias ec='emacsclient'
alias openhere='xdg-open .'
#alias vpn='nohup python ~/goagent/local/proxy.py > /dev/null 2>&1'
alias vpn='python ~/goagent/local/proxy.py'
alias ssh_proxy='ssh -qTfnN -D 7070 hualet@vip04.gossh.net -p 443'
alias vps_proxy='ssh -qTfnN -D 7070 hualet@192.157.206.233'
alias update_deepin='sudo apt-get update && sudo apt-get dist-upgrade -y'
alias copy_file_content='xclip -sel clip <'
alias dss='dde-control-center'
alias dss2014='~/project/dss/frame/main.py'
alias sync_dss='rsync -r hualet@10.0.0.128:/Users/hualet/Projects/Company/dss ~/project'

alias hualet2deepin='cp ~/.emacs ~/Backup/hualet-emacs/.emacs ; cp ~/Backup/deepin-emacs/.emacs ~/.emacs'
alias deepin2hualet='cp ~/.emacs ~/Backup/deepin-emacs/.emacs ; cp ~/Backup/hualet-emacs/.emacs ~/.emacs'


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
