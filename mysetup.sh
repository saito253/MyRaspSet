#! /bin/bash


echo -n "### Do you apt-get update ? [y/n] "
read ANSWER
if [ "$ANSWER" = "y" ]; then
    sudo apt-get update
fi


echo -n "### Do you get LazuriteInstaller ? [y/n] "
read ANSWER
case $ANSWER in
  "y" | "y" )
	git clone git://github.com/LAPIS-Lazurite/LazuriteInstaller
esac


echo -n "### Do you get node-red-contrib-lazurite ? [y/n] "
read ANSWER
case $ANSWER in
  "y" | "y" )
	git clone git://github.com/LAPIS-Lazurite/node-red-contrib-lazurite
	cd ~/.node-red/node_modules
	node-gyp rebuild
esac


echo -n "### Do you set japanese ? [y/n] "
read ANSWER
if [ "$ANSWER" = "y" ]; then
    sudo apt-get install fonts-ipafont
    sudo apt-get install ibus-mozc
    echo -n "Please set following. Menu　＞ Preferences ＞　Raspberry Pie Configuration"
fi


echo -n "### Do you set samba ? [y/n] "
read ANSWER
case $ANSWER in
  "y" | "y" )
	sudo apt-get install samba
	sudo apt-get install ufw
	sudo apt-get update

	sudo mkdir -p /var/samba
	sudo chown nobody:nogroup /var/samba
	sudo chmod 777 /var/samba

	sudo chmod 750 /etc/samba/smb.conf
  	echo "[pi]" >> /etc/samba/smb.conf
   	echo "path = /home/pi" >> /etc/samba/smb.conf
   	echo "guest ok = no" >>  /etc/samba/smb.conf
   	echo "read only = no" >>  /etc/samba/smb.conf
   	echo "force user = pi" >>  /etc/samba/smb.conf
   	echo "sudo ufw allow 137/udp" >>  /etc/samba/smb.conf
   	echo "sudo ufw allow 138/udp" >>  /etc/samba/smb.conf
   	echo "sudo ufw allow 139/tcp" >>  /etc/samba/smb.conf
   	echo "sudo ufw allow 445/tcp" >>  /etc/samba/smb.conf
 	sudo smbpasswd -a pi
esac


echo -n "### Do you set vim ? [y/n] "
read ANSWER
if [ "$ANSWER" = "y" ]; then
    sudo apt-get update
    sudo apt-get install vim
    sudo apt-get install vim-gtk
    git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
    curl https://raw.githubusercontent.com/saito253/MyRaspSet/master/.viminfo > ~/.viminfo
    curl https://raw.githubusercontent.com/saito253/MyRaspSet/master/.vimrc > ~/.vimrc
fi


echo -n "### Do you set vtreeexplorer ? [y/n] "
read ANSWER
if [ "$ANSWER" = "y" ]; then
    wget http://www.vim.org/scripts/download_script.php?src_id=8097
    tar xvf download_script.php?src_id=8097
    mv -r plugin ~/.vim/.
    mv -r doc ~/.vim/.
    rm download_script.php?src_id=8097
fi


echo -n "### Do you set desk top pager ? [y/n] "
read ANSWER
case $ANSWER in
  "y" | "y" )
	sudo apt-get install obconf
esac


echo -n "### Do you modify .bsshrc ? [y/n] "
read ANSWER
case $ANSWER in
  "y" | "y" )
  vim ~/.bashrc
  source ~/.bashrc
esac
