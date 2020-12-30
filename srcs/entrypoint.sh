# service mysql start

mkdir /var/www/localhost
cp localhost_index_on /etc/nginx/sites-available/localhost
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
cp info.php /var/www/localhost/
cp -f www.conf /etc/php/7.3/fpm/pool.d/www.conf
cat /etc/php/7.3/fpm/pool.d/www.conf
# mysql -u root -e "CREATE DATABASE wordpress;"
# mysql -u root -e "CREATE USER 'wordpress'@'localhost';"
# mysql -u root -e "SET password FOR 'wordpress'@'localhost' = password('password');"
# mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' IDENTIFIED BY 'password';"
# mysql -u root -e "FLUSH PRIVILEGES;"

service nginx start

tail -f /var/log/nginx/access.log /var/log/nginx/error.log