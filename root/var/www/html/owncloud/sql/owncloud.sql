CREATE DATABASE IF NOT EXISTS owncloud;

grant all on owncloud.* to 'ownuser'@'%' identified by 'ownpass';
FLUSH PRIVILEGES;
