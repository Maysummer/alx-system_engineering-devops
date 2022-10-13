# MySQL
## Install MySQL 5.7
-copy [key](https://alx-intranet.hbtn.io/rltoken/Zzs_TLRYjWWFxjJRArmFcQ) and save
sudo apt-key add signature.key
add apt repo: sudo sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'
update apt: sudo apt-get update
check available versions: sudo apt-cache policy mysql-server
install 5.7: sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*
