Drop database if exists mydb;
create database mydb CHARACTER SET utf8 COLLATE UTF8_GENERAL_CI;
Use mydb;

Show tables;
Drop table if exists users;
CREATE TABLE users (
	id INT NOT NULL,
	name varchar(30) NOT NULL,
	surname varchar(30) NOT NULL,
	username varchar(30) NOT NULL,
	password varchar(30) NOT NULL,
	PRIMARY KEY (id)
);
Drop table if exists macros;
CREATE TABLE macros (
	id INT NOT NULL,
	protein INT NOT NULL,
	carbs INT NOT NULL,
	fat INT NOT NULL,
	calories INT NOT NULL
);

ALTER TABLE macros ADD CONSTRAINT macros_fk0 FOREIGN KEY (id) REFERENCES users(id);