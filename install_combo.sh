#####################################################
# Created by afiniel for crypto use...
#####################################################

source /etc/yiimpool.conf

if [ -d "$HOME/yiimpool/yiimp_multi" ]; then
  cd $HOME/yiimpool/yiimp_multi
else
  cd $HOME
fi

# Begin Installation
source questions_combined.sh
source system_combo_db.sh
source db_combo.sh
source server_harden_db.sh
source motd_db_combo.sh
source setsid_web_server.sh
source setsid_daemon_server.sh
source ssh_db.sh

if [ -d "$HOME/yiimpool/yiimp_multi" ]; then
  cd $HOME/yiimpool/yiimp_multi
else
  cd $HOME
fi
