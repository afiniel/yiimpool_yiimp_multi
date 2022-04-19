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
source questions_multi.sh
source system_multi_db.sh
source db_multi.sh
source server_harden_db.sh
source motd_db.sh
source setsid_web_server.sh
source setsid_stratum_server.sh
source setsid_daemon_server.sh
source ssh_db.sh

if [ -d "$HOME/yiimpool/yiimp_multi" ]; then
  cd $HOME/yiimpool/yiimp_multi
else
  cd $HOME
fi
