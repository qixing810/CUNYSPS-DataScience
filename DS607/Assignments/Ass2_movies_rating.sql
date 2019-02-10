/*
  tb.sql
*/

DROP TABLE IF EXISTS movies_rating;

CREATE TABLE movies_rating
(
  Name varchar(20) NOT NULL,
  Movie varchar(100) NOT NULL,
  Rating int NULL
);

SELECT * FROM movies_rating;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/movies_rating.csv' 
INTO TABLE movies_rating
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Name, Movie, @Rating)
SET Rating = nullif(@Rating,-1)
;

SELECT * FROM movies_rating;