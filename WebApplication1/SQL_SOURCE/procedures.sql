create or replace procedure  GET_MOVIE_EYAR
(
 pr_movie_id in movies.movie_id%type,
 ion out movies.movie_relise_date%type
)
is
begin
select movie_relise_date into ion  FROM movies WHERE movie_id=pr_movie_id;
end;


CREATE OR REPLACE PROCEDURE GET_IMAGE_DIR
(
 pr_image_id in images.image_id%type,
 ion out images.image_name%type
) IS
DIR_ALIAS VARCHAR2(255);
FILE_NAME VARCHAR2(255);
bf  BFILE;
BEGIN
SELECT image into bf  FROM images WHERE IMAGE_ID=pr_image_id;
DBMS_LOB.FILEGETNAME (bf, dir_alias, file_name);
ion:=dir_alias;
END;


create or replace procedure  GET_MOVIE_DESCRIPTION
(
 pr_movie_id in movies.movie_id%type,
 ion out movies.description%type
)
is
begin
select description into ion  FROM movies WHERE movie_id=pr_movie_id;
end;
create or replace procedure  GET_MOVIE_NAME
(
 pr_movie_id in movies.movie_id%type,
 ion out movies.movie_name%type
)
is
begin
select movie_name into ion  FROM movies WHERE movie_id=pr_movie_id;
end;

create or replace procedure  GET_IMAGE_NAME
(
 pr_image_id in images.image_id%type,
 ion out images.image_name%type
)
is
begin
select image_name into ion  FROM images WHERE IMAGE_ID=pr_image_id;
end;

--------------------------------------------------------------
CREATE OR REPLACE PROCEDURE GET_TRAILER_DIR
(
 pr_trailer_id in trailer.trailer_id%type,
 ion out trailer.trailer_name%type
) IS
DIR_ALIAS VARCHAR2(255);
FILE_NAME VARCHAR2(255);
bf  BFILE;
BEGIN
SELECT trailer_video into bf  FROM trailer WHERE TRAILER_ID=pr_trailer_id;
DBMS_LOB.FILEGETNAME (bf, dir_alias, file_name);
ion:=dir_alias;
END;



declare
dir varchar2(300);
begin 
GET_IMAGE_DIR(1,dir);
dbms_output.put_line(dir);
end;


create or replace procedure  GET_TRAILER_NAME
(
 pr_trailer_id in trailer.trailer_id%type,
 ion out trailer.trailer_name%type
)
is
begin
select trailer_name into ion  FROM trailer WHERE TRAILER_ID=pr_trailer_id;
end;
----------------------------------------------------------------
CREATE OR REPLACE PROCEDURE GET_SOUNDTRACK_DIR
(
 pr_soundtrack_id in soundtrack.soundtrack_id%type,
 ion out soundtrack.soundtrack_name%type
) IS
DIR_ALIAS VARCHAR2(255);
FILE_NAME VARCHAR2(255);
bf  BFILE;
BEGIN
SELECT soundtrack into bf  FROM soundtrack WHERE soundtrack_id=pr_soundtrack_id;
DBMS_LOB.FILEGETNAME (bf, dir_alias, file_name);
ion:=dir_alias;
END;



declare
dir varchar2(300);
begin 
GET_IMAGE_DIR(1,dir);
dbms_output.put_line(dir);
end;


create or replace procedure  GET_SOUNDTRACK_NAME
(
pr_soundtrack_id in soundtrack.soundtrack_id%type,
 ion out soundtrack.soundtrack_name%type
)
is
begin
select soundtrack_name into ion  FROM soundtrack WHERE soundtrack_id=pr_soundtrack_id;
end;
-----------------------------------------------------------------
-----------------------------------------------------------------
CREATE SEQUENCE mov_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE insertMovies
(

pr_movie_name in movies.movie_name%type,
pr_movie_relise_date in movies.movie_relise_date%type,
pr_movie_duration in movies.movie_duration%type,
pr_description in movies.description%type
)
IS
BEGIN
INSERT INTO movies (movie_id,movie_name,movie_relise_date,movie_duration,description)
VALUES (mov_id_seq.nextval,pr_movie_name,pr_movie_relise_date,pr_movie_duration,pr_description);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updateMovies
(
pr_movie_id in movies.movie_id%type,
pr_movie_name in movies.movie_name%type,
pr_movie_relise_date in movies.movie_relise_date%type,
pr_movie_duration in movies.movie_duration%type,
pr_description in movies.description%type
)
IS
BEGIN
UPDATE movies set movie_id=pr_movie_id,movie_name=pr_movie_name,movie_relise_date=pr_movie_relise_date,movie_duration=pr_movie_duration,description=pr_description;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deleteMovies
(
pr_movie_id in movies.movie_id%type

)
IS
BEGIN
Delete from movies where movie_id =pr_movie_id;
COMMIT;
END;

---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
CREATE SEQUENCE genre_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE insertGenre
(

pr_genre_name in genre.genre_name%type
)
IS
BEGIN
INSERT INTO genre (genre_id,genre_name)
VALUES (genre_id_seq.nextval,pr_genre_name);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updateGenre
(
pr_genre_id in genre.genre_id%type,
pr_genre_name in genre.genre_name%type
)
IS
BEGIN
UPDATE genre set genre_id=pr_genre_id,genre_name=pr_genre_name;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deleteGenre
(
pr_genre_id in genre.genre_id%type

)
IS
BEGIN
Delete from genre where genre_id =pr_genre_id;
COMMIT;
END;

---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
CREATE SEQUENCE movie_genre_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE insertmovie_genre
(

pr_movie_id in movies_genre.movie_id%type,
pr_genre_id in movies_genre.genre_id%type

)
IS
BEGIN
INSERT INTO movies_genre (movies_genre_id,genre_id,movie_id)
VALUES (movie_genre_id_seq.nextval,pr_genre_id,pr_movie_id);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updatemovie_genre
(
pr_movie_genre_id in movies_genre.movies_genre_id%type,
pr_movie_id in movies_genre.movie_id%type,
pr_genre_id in movies_genre.genre_id%type
)
IS
BEGIN
UPDATE movies_genre set movies_genre_id=pr_movie_genre_id, genre_id=pr_genre_id,movie_id=pr_movie_id;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deletemovie_genre
(
pr_movie_genre_id in movies_genre.movies_genre_id%type
)
IS
BEGIN
Delete from movies_genre where movies_genre_id=pr_movie_genre_id;
COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
CREATE SEQUENCE actors_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE insertActor
(
pr_actor_name in actors.actor_name%type
)
IS
BEGIN
INSERT INTO actors (actor_id,actor_name)
VALUES (actors_id_seq.nextval,pr_actor_name);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updateActor
(
pr_actor_id in actors.actor_id%type,
pr_actor_name in actors.actor_name%type
)
IS
BEGIN
UPDATE actors set actor_id=pr_actor_id,actor_name=pr_actor_name;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deleteActor
(
pr_actor_id in actors.actor_id%type

)
IS
BEGIN
Delete from actors where actor_id =pr_actor_id;
COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
CREATE SEQUENCE movies_actors_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE insertmovies_actors
(
pr_actor_id in movies_actors.actor_id%type,
pr_movie_id in movies_actors.movie_id%type


)
IS
BEGIN
INSERT INTO movies_actors (movies_actors_id,actor_id,movie_id)
VALUES (movies_actors_id_seq.nextval,pr_actor_id,pr_movie_id);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updatemovies_actors
(
pr_movies_actor_id in movies_actors.movies_actors_id%type,
pr_actor_id in movies_actors.actor_id%type,
pr_movie_id in movies_actors.movie_id%type

)
IS
BEGIN
UPDATE movies_actors set movies_actors_id=pr_movies_actor_id, actor_id=pr_actor_id,movie_id=pr_movie_id;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deletemovies_actor
(
pr_movies_actor_id in movies_actors.movies_actors_id%type
)
IS
BEGIN
Delete from movies_actors where movies_actors_id=pr_movies_actor_id;
COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
CREATE SEQUENCE movie_country_id_seq START WITH 1;

CREATE OR REPLACE PROCEDURE insertmovie_country
(
pr_country_id in movie_country.country_id%type,
pr_movie_id in movie_country.movie_id%type
)
IS
BEGIN
INSERT INTO movie_country (movie_country_id,country_id,movie_id)
VALUES (movie_country_id_seq.nextval,pr_country_id,pr_movie_id);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updatemovie_country
(
pr_movie_country_id in movie_country.movie_country_id%type,
pr_country_id in movie_country.country_id%type,
pr_movie_id in movie_country.movie_id%type

)
IS
BEGIN
UPDATE movie_country set movie_country_id=pr_movie_country_id, country_id=pr_country_id,movie_id=pr_movie_id;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deletemovie_country
(
pr_movie_country_id in movie_country.movie_country_id%type
)
IS
BEGIN
Delete from movie_country where movie_country_id=pr_movie_country_id;
COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
CREATE SEQUENCE movie_soundtrack_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE insertmovie_soundtrack
(
pr_soundtrack_id in movie_soundtrack.soundtrack_id%type,
pr_movie_id in movie_soundtrack.movie_id%type
)
IS
BEGIN
INSERT INTO movie_soundtrack (movie_soundtrack_id,soundtrack_id,movie_id)
VALUES (movie_soundtrack_id_seq.nextval,pr_soundtrack_id,pr_movie_id);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updatemovie_soundtrack
(
pr_movie_soundtrack_id in movie_soundtrack.movie_soundtrack_id%type,
pr_soundtrack_id in movie_soundtrack.soundtrack_id%type,
pr_movie_id in movie_soundtrack.movie_id%type

)
IS
BEGIN
UPDATE movie_soundtrack set movie_soundtrack_id=pr_movie_soundtrack_id, soundtrack_id=pr_soundtrack_id,movie_id=pr_movie_id;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deletemovie_soundtrack
(
pr_movie_soundtrack_id in movie_soundtrack.movie_soundtrack_id%type
)
IS
BEGIN
Delete from movie_soundtrack where movie_soundtrack_id=pr_movie_soundtrack_id;
COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------


CREATE SEQUENCE country_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE insertcountry
(
pr_country_name in country.country_name%type
)
IS
BEGIN
INSERT INTO country (country_id,country_name)
VALUES (country_id_seq.nextval,pr_country_name);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updatecountry
(
pr_country_id in country.country_id%type,
pr_country_name in country.country_name%type
)
IS
BEGIN
UPDATE country set country_id=pr_country_id,country_name=pr_country_name;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deletecountry
(
pr_country_id in country.country_id%type

)
IS
BEGIN
Delete from country where country_id =pr_country_id;
COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
CREATE SEQUENCE trailer_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE inserttrailer
(
  pr_trailer_name in trailer.trailer_name%type
)
IS
  pr_trailer_video  BFILE := BFILENAME('/Content/DATA/TRAILER_DIR', pr_trailer_name);
BEGIN
INSERT INTO trailer (trailer_id,trailer_name,trailer_video)
VALUES (trailer_id_seq.nextval,pr_trailer_name, pr_trailer_video);
COMMIT;
END;


CREATE OR REPLACE PROCEDURE updatetrailer
(
pr_trailer_id in trailer.trailer_id%type,
pr_trailer_name in trailer.trailer_name%type
)
IS pr_trailer_video  BFILE := BFILENAME('/Content/DATA/TRAILER_DIR', pr_trailer_name);
BEGIN
UPDATE trailer set trailer_id=pr_trailer_id,trailer_name=pr_trailer_name,trailer_video=pr_trailer_video;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deletetrailer
(
pr_trailer_id in trailer.trailer_id%type

)
IS
BEGIN
Delete from trailer where trailer_id =pr_trailer_id;
COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
CREATE SEQUENCE images_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE insertimages
(

pr_image_name in images.image_name%type
)
IS pr_image  BFILE := BFILENAME('/Content/DATA/IMAGE_DIR', pr_image_name);
BEGIN
INSERT INTO images (image_id,image_name,image)
VALUES (images_id_seq.nextval,pr_image_name,pr_image);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updateimages
(
pr_image_id in images.image_id%type,
pr_image_name in images.image_name%type
)
IS pr_image  BFILE := BFILENAME('/Content/DATA/IMAGE_DIR', pr_image_name);
BEGIN
UPDATE images set image_id=pr_image_id,image_name=pr_image_name,image=pr_image;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deleteimages
(
pr_image_id in images.image_id%type

)
IS
BEGIN
Delete from images where image_id =pr_image_id;
COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------

CREATE SEQUENCE soundtrack_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE insertsoundtrack
(
pr_soundtrack_name in soundtrack.soundtrack_name%type

)
IS
pr_soundtrack  BFILE:= BFILENAME('/Content/DATA/SOUNDTRACK_DIR',pr_soundtrack_name);
BEGIN
INSERT INTO soundtrack (soundtrack_id,soundtrack_name,soundtrack)
VALUES (soundtrack_id_seq.nextval,pr_soundtrack_name,pr_soundtrack);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updatesoundtrack
(
pr_soundtrack_id in soundtrack.soundtrack_id%type,
pr_soundtrack_name in soundtrack.soundtrack_name%type

)
IS
pr_soundtrack  BFILE:= BFILENAME('/Content/DATA/SOUNDTRACK_DIR',pr_soundtrack_name);

BEGIN
UPDATE soundtrack set soundtrack_id=pr_soundtrack_id,soundtrack_name=pr_soundtrack_name,soundtrack=pr_soundtrack;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deletesoundtrack
(
pr_soundtrack_id in soundtrack.soundtrack_id%type
)
IS
BEGIN
Delete from soundtrack where soundtrack_id =pr_soundtrack_id;
COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
CREATE SEQUENCE users_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE insertuser
(
pr_user_name in users.user_name%type,
pr_users_lastname in users.user_lastname%type,
pr_users_email in users.user_email%type,
pr_users_password in users.user_password%type
)
IS
BEGIN
INSERT INTO users (user_id,user_name,user_lastname,user_email,user_password)
VALUES (users_id_seq.nextval,pr_user_name,pr_users_lastname,pr_users_email,pr_users_password);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updateuser
(
pr_user_id in users.user_id%type,
pr_user_name in users.user_name%type,
pr_users_lastname in users.user_lastname%type,
pr_users_email in users.user_email%type,
pr_users_password in users.user_password%type
)
IS
BEGIN
UPDATE users set user_id=pr_user_id,user_name=pr_user_name,user_lastname=pr_users_lastname,user_email=pr_users_email,user_password=pr_users_password;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deleteuser
(
pr_user_id in users.user_id%type
)
IS
BEGIN
Delete from users where user_id =pr_user_id;
COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
---------------------------------------------------------------------------
CREATE SEQUENCE favorite_id_seq START WITH 1;
CREATE OR REPLACE PROCEDURE inserfavorite
(
pr_user_id in favorite.user_id%type,
pr_movie_id in favorite.movie_id%type,
pr_status in favorite.user_id%type

)
IS
BEGIN
INSERT INTO favorite (id,user_id,movie_id,status)
VALUES (favorite_id_seq.nextval,pr_user_id,pr_movie_id,pr_status);
COMMIT;
END;

CREATE OR REPLACE PROCEDURE updatefavorite
(
pr_favorite_id in favorite.id%type,
pr_user_id in favorite.user_id%type,
pr_movie_id in favorite.movie_id%type,
pr_status in favorite.user_id%type
)
IS
BEGIN
UPDATE favorite set id=pr_favorite_id,user_id=pr_user_id,movie_id=pr_movie_id,status=pr_status ;
COMMIT;
END;

CREATE OR REPLACE PROCEDURE deletefavorite
(
pr_favorite_id in favorite.id%type
)
IS
BEGIN
Delete from favorite where id=pr_favorite_id;
COMMIT;
END;
