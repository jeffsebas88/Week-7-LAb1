DROP DATABASE if exists NotesDB;
CREATE DATABASE NotesDB;

USE NotesDB;


DROP TABLE Note;

CREATE TABLE Note( 
    noteid int NOT NULL AUTO_INCREMENT,
    dateCreated DATE NOT NULL,
    content VARCHAR(10000) CHARACTER SET utf8 NOT NULL,
    PRIMARY KEY (noteid)
);

INSERT INTO Note (dateCreated,content) values(CURDATE(),'The quick brown fox jumped over the lazy dog');
