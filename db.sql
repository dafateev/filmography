# SQL scripts for creating a table of films in the MySQL database in the db_movie_list schema in the films table
USE test;

DROP TABLE IF EXISTS films;
CREATE TABLE films
(
  id int(10) PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  year int(4),
  genre VARCHAR(20),
  watched BIT DEFAULT false  NOT NULL
);
# COLLATE='utf8_general_ci';
CREATE UNIQUE INDEX films_title_uindex ON films (title);

INSERT INTO `films` (`title`,`year`,`genre`, watched)
VALUES
  ("Star Wars", 1977, "space opera", 1),
  ("The Lord of the Rings: The Fellowship of the Ring", 2001, "fantasy", 1),
  ("Last Action Hero", 1993, "comedy", 1),
  ("Indiana Jones", 1981, "adventures", 1),
  ("Die Hard", 1988, "action", 1),
  ("6", 1988, "action", 1),
  ("7", 1988, "action", 1),
  ("8", 1988, "action", 1),
  ("9", 1988, "action", 1),
  ("10", 1988, "action", 1),
  ("11", 1988, "action", 1),
  ("12", 1988, "action", 1),
  ("13", 1988, "action", 1),
  ("14", 1988, "action", 1),
  ("15", 1988, "action", 1),
  ("16", 1988, "action", 1),
  ("17", 1988, "action", 1),
  ("18", 1988, "action", 1),
  ("19", 1988, "action", 1),
  ("20", 1988, "action", 1);