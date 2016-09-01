DROP DATABASE IF EXISTS solr_tutorial;
CREATE DATABASE solr_tutorial;
USE solr_tutorial;

CREATE TABLE person(
	id INT NOT NULL AUTO_INCREMENT, 
	firstname VARCHAR(25), 
	lastname VARCHAR(25), 
	description TEXT,
	created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (id)
);

INSERT INTO person VALUES(NULL, 'Amit', 'Deshmukh', 'Amit works as a software engineer at Xpand Corporation. He is married and lives in Leesburg.', NULL, NULL);
INSERT INTO person VALUES(NULL, 'Payal', 'Sureja', 'Payal works as a software engineer at Xpand Corporation. She is married and lives in Herndon. She has 1 kid.', NULL, NULL);
INSERT INTO person VALUES(NULL, 'Chris', 'Cassad', 'Chris works as a manager and principal software engineer at Xpand Corporation. He is married and lives in Aldie. He has 2 kids', NULL, NULL);