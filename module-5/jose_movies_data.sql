-- --JOSE VELAZQUEZ
-- MODULE 5.2/6.2 ASSIGNMENT
-- DATE: 07/05/2026
-- jose_movies_data.sql
-- CSD430 Movies Database Project
-- Creates the CSD430 database, creates the student1 user, creates the movie table,
-- and inserts 10 records.

CREATE DATABASE IF NOT EXISTS CSD430;

CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;

USE CSD430;

DROP TABLE IF EXISTS jose_movies_data;

CREATE TABLE jose_movies_data (
    movie_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(75) NOT NULL,
    genre VARCHAR(40) NOT NULL,
    release_year INT NOT NULL,
    rating VARCHAR(10) NOT NULL,
    director VARCHAR(75) NOT NULL,
    PRIMARY KEY (movie_id)
);

INSERT INTO jose_movies_data (title, genre, release_year, rating, director) VALUES
('The Dark Knight', 'Action', 2008, 'PG-13', 'Christopher Nolan'),
('Jurassic Park', 'Adventure', 1993, 'PG-13', 'Steven Spielberg'),
('Ratatouille', 'Animation', 2007, 'G', 'John Lasseter'),
('Avatar', 'Science Fiction', 2009, 'PG-13', 'James Cameron'),
('The Lion King', 'Animation', 1994, 'G', 'Roger Allers'),
('Black Panther', 'Action', 2018, 'PG-13', 'Ryan Coogler'),
('Interstellar', 'Science Fiction', 2014, 'PG-13', 'Christopher Nolan'),
('Spider-Man: Into the Spider-Verse', 'Animation', 2018, 'PG', 'Bob Persichetti'),
('The Avengers', 'Action', 2012, 'PG-13', 'Joss Whedon'),
('Coco', 'Animation', 2017, 'PG', 'Lee Unkrich');

SELECT * FROM jose_movies_data;
