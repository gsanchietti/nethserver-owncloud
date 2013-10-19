CREATE DATABASE IF NOT EXISTS owncloud;

USE owncloud;


grant all on owncloud.* to 'ownuser'@'%' identified by 'ownpass';
FLUSH PRIVILEGES;
