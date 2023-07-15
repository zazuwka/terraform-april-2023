!#/bin/bash
yum install httpd wget unzip epel-release yum-utils mysql -y
yum install https://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
yum-config-manager --enable remi-php74
yum install php php-gd -y
yum install php-mysql -y

wget https://wordpress.org/latest.tar.gz
tar -xf latest.tar.gz -C /var/www/html/
mv /var/www/html/wordpress/* /var/www/html/
setenforce 0
chown -R apache:apache /var/www/html/
systemctl restart httpd
systemctl enable httpd