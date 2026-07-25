-- --JOSE VELAZQUEZ
-- MODULE 9.2 ASSIGNMENT
-- DATE: 07/25/2026
-- jose_movies_data.sql
-- CSD430 Movies Database Project
-- Creates the CSD430 database, creates the student1 user, creates the movie table,
-- and inserts 10 records.

CREATE DATABASE IF NOT EXISTS CSD430;
USE CSD430;

DROP TABLE IF EXISTS jose_movies_data;

CREATE TABLE jose_movies_data (
    movie_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    release_year INT NOT NULL,
    director VARCHAR(100) NOT NULL,
    rating VARCHAR(10) NOT NULL,
    PRIMARY KEY (movie_id)
);

INSERT INTO jose_movies_data (title, genre, release_year, director, rating) VALUES
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
