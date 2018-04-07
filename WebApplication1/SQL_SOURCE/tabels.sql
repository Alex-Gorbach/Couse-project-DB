CREATE TABLESPACE movies_and_user
DATAFILE 'E:\Учеба\Course_project_DB\SQL_SOURCE\movies_and_user.dbf'
   size 50m
   autoextend on next 10m
   maxsize 1000m  
   ONLINE;
  -- drop tablespace movies_and_user;
   -- drop tablespace movies_and_user_temp;

CREATE TEMPORARY TABLESPACE movies_and_user_temp
   TEMPFILE 'E:\Учеба\Course_project_DB\SQL_SOURCE\movies_and_user_temp.dbf'
   size 50m
   autoextend on next 10m
   maxsize 500m;


alter table movies modify DESCRIPTION varchar(4000);
CREATE TABLE movies(
  MOVIE_ID INT PRIMARY KEY NOT NULL,
  MOVIE_NAME VARCHAR(30) NOT NULL,
  MOVIE_RELISE_DATE DATE,
  MOVIE_DURATION INT,
  DESCRIPTION varchar(4000)
  
)TABLESPACE movies_and_user;

create table genre(
    GENRE_ID int not null,
    GENRE_NAME varchar(20),
    primary key (GENRE_ID)
)TABLESPACE movies_and_user;



create table movies_genre(
    movies_genre_id int primary key not null,
    GENRE_ID int not null,
    MOVIE_ID INT not null,
    foreign key (GENRE_ID) References genre(GENRE_ID),
    foreign key (MOVIE_ID) References movies(MOVIE_ID)
  
)TABLESPACE movies_and_user;

CREATE TABLE actors(
  ACTOR_ID INT PRIMARY KEY NOT NULL,
  ACTOR_NAME VARCHAR(30) NOT NULL
)TABLESPACE movies_and_user;

CREATE TABLE movies_actors(
  movies_actors_id int primary key not null,
  ACTOR_ID INT  NOT NULL,
  MOVIE_ID INT  NOT NULL,
    foreign key (ACTOR_ID) References actors(ACTOR_ID),
    foreign key (MOVIE_ID) References movies(MOVIE_ID)
)TABLESPACE movies_and_user;

CREATE TABLE country(
  COUNTRY_ID INT NOT NULL,
  COUNTRY_NAME VARCHAR(20) NOT NULL,
   PRIMARY KEY(COUNTRY_ID)
)TABLESPACE movies_and_user;

CREATE TABLE movie_country(
  movie_country_id int primary key not null,
  COUNTRY_ID INT NOT NULL,
   MOVIE_ID INT  NOT NULL,
    foreign key (COUNTRY_ID) References country(COUNTRY_ID),
    foreign key (MOVIE_ID) References movies(MOVIE_ID)
 )TABLESPACE movies_and_user;

CREATE TABLE trailer(
  TRAILER_ID INT PRIMARY KEY NOT NULL,
  trailer_name varchar(20) not null,
  TRAILER_VIDEO BFILE,
  FOREIGN KEY (TRAILER_ID) REFERENCES movies(MOVIE_ID)
)
TABLESPACE movies_and_user;

CREATE TABLE images(
  IMAGE_ID INT PRIMARY KEY NOT NULL,
  image_name varchar(20) not null,
  IMAGE BFILE,
  FOREIGN KEY (IMAGE_ID) REFERENCES movies(MOVIE_ID)
)TABLESPACE movies_and_user;
alter table soundtrack modify SOUNDTRACK_NAME varchar(100)
CREATE TABLE soundtrack(
  SOUNDTRACK_ID INT PRIMARY KEY NOT NULL,
  SOUNDTRACK_NAME VARCHAR(100),
  SOUNDTRACK BFILE
)TABLESPACE movies_and_user;

CREATE TABLE movie_soundtrack(
   movie_soundtrack_id int primary key not null,
   SOUNDTRACK_ID INT NOT NULL,
   MOVIE_ID INT NOT NULL,
    foreign key (SOUNDTRACK_ID) References soundtrack(SOUNDTRACK_ID),
    foreign key (MOVIE_ID) References movies(MOVIE_ID)
)TABLESPACE movies_and_user;
alter table users modify USER_EMAIL varchar2(200);
alter table users modify USER_PASSWORD varchar2(200);
alter table users modify USER_NAME varchar2(200);
alter table users modify USER_LASTNAME varchar2(200);
CREATE TABLE users(
  USER_ID INT  NOT NULL,
  USER_NAME VARCHAR2(200) NOT NULL,
  USER_LASTNAME VARCHAR2(200) NOT NULL,
 USER_EMAIL varchar2(200) NOT NULL,
  USER_PASSWORD VARCHAR2(200) NOT NULL,
  PRIMARY KEY(USER_ID)
)TABLESPACE movies_and_user;

select * from users;



CREATE TABLE favorite(
  ID int primary key not null,
  USER_ID INT  NOT NULL,
  MOVIE_ID INT  NOT NULL,
  status varchar(20) not null,
   foreign key (USER_ID) References users(USER_ID),
    foreign key (MOVIE_ID) References movies(MOVIE_ID)
)TABLESPACE movies_and_user;

--DROP TABLE movies;
--drop table genre;
--drop table movies_genre;
--DROP TABLE actors;
--DROP TABLE movies_actors;
--DROP TABLE country;
--DROP TABLE movie_country;
--DROP TABLE trailer;
--DROP TABLE images;
--DROP TABLE soundtrack;
--DROP TABLE movie_soundtrack;
--DROP TABLE users;
--DROP TABLE favorite;
