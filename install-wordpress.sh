#THIS WILL INSTALL WORDPRESS ON SERVER
#TESTED AND WORKING ON SERVER
clear
echo INSTALL DATABASE... 
sudo apt install mariadb-server -y
mysql_secure_installation
systemctrl status mariadb
sudo apt install php -y
sudo apt install libapache2-mod-php -y
sudo apt install php-mysql -y
php -v
mysql -u root -p
CREATE DATABASE database; 
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'pass'; 
GRANT ALL PRIVILEGES ON *.* TO 'admin@'localhost'; 
FLUSH PRIVILEGES; 
clear
systemctrl restart apache2
cd
cd /var/www/html
sudo apt install wget -y
clear
echo DOWNLOAD WORDPRESS... 
wget http://wordpress.org/latest.tar.gz
ls
tar xfz latest. tar. gz
mv wordpress/* ./
#rm -f latest. tar. gz
rm index.html
cp wp-config-sample.php wp-config.php
sudo apt install nano -y
clear
echo SETUP WP-CONFIG... 
nano wp-config.php
clear
echo WORDPRESS INSTALLED... 
