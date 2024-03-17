sudo apt update -y
sudo apt upgrade -y
clear 

ls #List Dir
pwd # Curront working dir

sudo apt install nginx -y #install Server Nginex

#Need to check this cmd
#-
sudo service nginx restart
sudo iptables -P INPUT ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -F
#+

sudo apt install mariadb-server -y

#In that we need to go root user
sudo -i
mysql_secure_installation
#Set root password? [Y/n] Y
#Remove anonymous users? [Y/n] n
#Disallow root login remotely? [Y/n] n
#Remove test database and access to it? [Y/n] n
#Reload privilege tables now? [Y/n] Y
mariadb

#Imstall php 7.4
sudo apt -y install php7.4
sudo apt install php-fpm php-mysql -y
#check php version
php -v
#service php{version}-fpm status
service php7.4-fpm status
service php7.4-fpm restart
sudo apt install -y php-cli php-common php-zip php-gd php-mbstring php-curl php-xml php-bcmath
sudo apt install -y openssl php-bcmath php-curl php-json php-mbstring php-mysql php-tokenizer php-xml php-zip



#php Repo 8.2
: '
sudo add-apt-repository ppa:ondrej/php
sudo apt update -y && sudo apt upgrade -y
clear
sudo apt install php-fpm php-mysql -y
php -v
service php{version}-fpm status"
service php8.3-fpm status
service php8.3-fpm restart
#apt-get install php8-cli php-common php-zip php-gd php-mbstring php-curl php-xml php-bcmath
#  php8-cli php-common php-gd @Check That
sudo apt install openssl php-bcmath php-curl php-json php-mbstring php-mysql php-tokenizer php-xml php-zip -Y
'

#Install Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
#Add Globle
sudo mv composer.phar /usr/local/bin/composer
composer
Continue as root/super user [yes]? yes

#Install GIT
sudo apt install git -y

#Check User Base Folder and Try pwd command
#User cd Command to go to root Folder
#pwd


: '

Last login: Sun Mar 17 14:39:42 2024 from 112.134.224.103
ubuntu@ip-172-31-28-127:~$ cd
ubuntu@ip-172-31-28-127:~$ cd /var
ubuntu@ip-172-31-28-127:/var$ cd www
ubuntu@ip-172-31-28-127:/var/www$ ls
html
ubuntu@ip-172-31-28-127:/var/www$ mkdir laravel
mkdir: cannot create directory ‘laravel’: Permission denied
ubuntu@ip-172-31-28-127:/var/www$ sudo mkdir laravel
ubuntu@ip-172-31-28-127:/var/www$
ubuntu@ip-172-31-28-127:/var/www/laravel$ sudo chown -R ubuntu /var/www/laravel
ubuntu@ip-172-31-28-127:/var/www/laravel$ sudo chmod -R 777 /var/www/laravel
ubuntu@ip-172-31-28-127:/var/www/laravel$ git clone https://github.com/PayMediaLK/NSB_F2F_Kyc_BackEnd.git
Cloning into 'NSB_F2F_Kyc_BackEnd'...
Username for 'https://github.com': gitv1
Password for 'https://gitv1@github.com':
remote: Enumerating objects: 2432, done.
remote: Counting objects: 100% (2432/2432), done.
remote: Compressing objects: 100% (804/804), done.
remote: Total 2432 (delta 1493), reused 2401 (delta 1462), pack-reused 0
Receiving objects: 100% (2432/2432), 6.42 MiB | 24.07 MiB/s, done.
Resolving deltas: 100% (1493/1493), done.
ubuntu@ip-172-31-28-127:/var/www/laravel$
ubuntu@ip-172-31-28-127:/var/www/laravel$ sudo systemctl daemon-reload
ubuntu@ip-172-31-28-127:/var/www/laravel$ sudo service laravel restart
ubuntu@ip-172-31-28-127:/var/www/laravel$ sudo service laravel status
● laravel.service - Sample App
     Loaded: loaded (/etc/systemd/system/laravel.service; disabled; vendor preset: enabled)
     Active: active (running) since Sun 2024-03-17 17:13:43 UTC; 6s ago
   Main PID: 31176 (php7.4)
      Tasks: 2 (limit: 1126)
     Memory: 31.1M
     CGroup: /system.slice/laravel.service
             ├─31176 /usr/bin/php7.4 /var/www/laravel/artisan serve --port=1213
             └─31183 /usr/bin/php7.4 -S 127.0.0.1:1213 /var/www/laravel/server.php

Mar 17 17:13:43 ip-172-31-28-127 systemd[1]: Started Sample App.
Mar 17 17:13:44 ip-172-31-28-127 laravel-sample[31176]: Starting Laravel development server: http://127.0.0.1:1213
Mar 17 17:13:44 ip-172-31-28-127 laravel-sample[31176]: [Sun Mar 17 17:13:44 2024] PHP 7.4.3-4ubuntu2.20 Development Server (http://127.0.0.1:1213) started
Mar 17 17:13:50 ip-172-31-28-127 systemd[1]: /etc/systemd/system/laravel.service:13: Missing '=', ignoring line.
ubuntu@ip-172-31-28-127:/var/www/laravel$


'