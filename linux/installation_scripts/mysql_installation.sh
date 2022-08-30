# Setup mysql-server
echo "-----Setting up MySQL Server-----"
sudo apt-get install -y mysql-client mysql-server
sudo apt-get install -y libmysqlclient-dev
# For adding password to mysql
	# sudo mysql
	# ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
# Also, install redis-server
sudo apt-get install -y redis-server
