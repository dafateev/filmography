# Скрипты SQL для создания таблицы фильмов в базе MySQL в схеме db_movie_list в таблице films
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
  ("Inception", 2010, "sci-fi", 1),
  ("The Lord of the Rings: The Fellowship of the Ring", 2001, "fantasy", 1),
  ("Tag", 2018, "comedy", 0),
  ("Gunfight at the O.K. Corral", 1957, "western", 0),
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