--������� ������
begin insertcountry('�������');end;
begin insertcountry('��������');end;
SELECT * FROM country;
-----------------------------------------------------
--������� �����������
delete from movie_soundtrack
delete from soundtrack
delete from soundtrack
begin
insertsoundtrack('Bo Diddley - Pretty Thing.mp3');
insertsoundtrack('Cannonball Adderley - Mercy Mercy Mercy.mp3');
insertsoundtrack('Earth Wind  Fire - Boogie Wonderland (Feat. The Emotions).mp3');
insertsoundtrack('Fred Astaire - Cheek To Cheek.mp3');
insertsoundtrack('Gene Austin - Did You Ever See A Dream Walking.mp3');
insertsoundtrack('Guy Lombardo and His Royal Canadians - Charmaine.mp3');
insertsoundtrack('Hank Williams - Lovesick Blues.mp3');
insertsoundtrack('John Williams   Itzhak Perlman - Auschwitz-Birkenau.mp3');
insertsoundtrack('John Williams   Itzhak Perlman - Give Me Your Names.mp3');
insertsoundtrack('John Williams   Itzhak Perlman - I Could Have Done More.mp3');
insertsoundtrack('John Williams   Itzhak Perlman - Remembrances.mp3');
insertsoundtrack('Ludovico Einaudi - Cache-Cache.mp3');
insertsoundtrack('Ludovico Einaudi - Fly.mp3');
insertsoundtrack('Ludovico Einaudi - Origine Nascosta.mp3');
insertsoundtrack('Nina Simone - Feeling Good.mp3');
insertsoundtrack('Thomas Newman - Elmo Blatch.mp3');
insertsoundtrack('Thomas Newman - Shawshank Redemption.mp3');
insertsoundtrack('Thomas Newman - Sisters.mp3');
insertsoundtrack('Thomas Newman - Suds On The Roof.mp3');
insertsoundtrack('Thomas Newman - Workfield.mp3');
insertsoundtrack('Thomas Newman - Zihuatanejo.mp3');
insertsoundtrack('Vib Gyor - Red Light.mp3');
end;
SELECT * FROM soundtrack;
-----------------------------------------------------
--������� �������
begin
insertactor('������ ���������');
insertactor('��� ��������');
insertactor('������� �������');
insertactor('�.��. ����');
insertactor('��� ������');
insertactor('���� �������');
insertactor('����� �����');
insertactor('����� ����');
insertactor('�������� ��������');
insertactor('�������� ��������');
end;
--������� ����
begin
insertactor('��� �����');
insertactor('����� ����');
insertactor('����� ����� ������');
insertactor('����� ����');
insertactor('������ ��������');
insertactor('����� ������');
insertactor('���� ����');
insertactor('��� ��������');
insertactor('��� �������');
insertactor('����� ������');
end;
--Pobeg iz shoushenko
begin
insertactor('��� �������');
insertactor('������ ������');
insertactor('��� ������');
insertactor('������ ������');
insertactor('������ �����');
insertactor('���� �������');
insertactor('���� �������');
insertactor('������ ������');
insertactor('������� ������');
insertactor('����� �����������');
end;
--1+1
begin
insertactor('������� �����');
insertactor('���� ��');
insertactor('��� �� ��');
insertactor('���� �����');
insertactor('������� �� ��');
insertactor('�������� �����');
insertactor('����� ���� ������� ��������');
insertactor('����� �����');
insertactor('�������� ������');
insertactor('���� ����� ���');

end;
--spisok
begin
insertactor('���� �����');
insertactor('��� �������');
insertactor('���� �����');
insertactor('�������� ������');
insertactor('����� ������');
insertactor('������� ������');
insertactor('������� ������');
insertactor('������ ����');
insertactor('���� ������');
insertactor('�������� ������');

end;
delete from actors;
select * from actors;
---------------------------------------------------------------
--������� �����
begin
insertgenre('����������');
insertgenre('�������');
insertgenre('���������');
insertgenre('��������');
insertgenre('�����');
insertgenre('����������');
insertgenre('�����������');
insertgenre('�������');
insertgenre('���-����');
insertgenre('�����');
insertgenre('��������������');
end;
begin
insertgenre('���������');
end;
select * from genre;
---------------------------------------------
--������� �����
begin
insertmovies('����� �� ��������','10.09.1994',142,'�������� ������ ���� ������� ������� � �������� ����������� ���� � �� ���������. ���������� � ������ ��� ��������� �������, �� ������������ � ����������� � �����������, �������� �� ��� ������� �������. ������, ��� �������� � ��� �����, ���������� �� ����� �� ����� �����. �� ����, ����������� ����� ���� � ������ �����, ������������ �������� � ���������� ������ � �������� ������������� ���������� ������� ���� ������ ������������.');
insertmovies('������ ��������','21.05.1993',195,'����� ������������ �������� ������� ����������� ������ ��������, ����� ���������� ������, �������������� ����������, �������� �� ����� ������ ������� ����� ����� 1200 ������.');
insertmovies('������� ����','06.12.1999',189,'���������� � �������� ������������, ���� ����� ����������� � ����� ���������� ������ ��������� ����. ����� ��������� ������� ������������� ������ � ��� ������� �������, ���, �������, ����� �� ������ �� ��������� � ���� ���������� ����� ���� ��������, ���������� ��������� ��������.');
insertmovies('1+1','26.09.2011',112,'��������� � ���������� ����������� ������, ������� ���������� ������ �������� � ��������� ��������, ������� ����� ����� �������� ��� ���� ������, � �������� ������ ���������� ������, ������ ��� ��������������� �� ������. �������� �� ��, ��� ������ �������� � ����������� ������, ������ ������� ��������� � ����������� ����� ����������� ��� �����������');
insertmovies('���� � ����-�����','06.02.2013',180,'1987 ���. ������� ������� ���������� �������� � �������� �������������� �����. ������ ���� ����������� ����� ���������� ������ ������� ���-������. �� ������ ���� ������ ������� ������������ � ��������� ���������, ������������ ������� �������. ��� ����������� ����� ������� � ��������� � ��������� ������� ������ ��� ���� �����. �� ���������� � ������� �� ���� �����, ���������, ������� ����� ������� ����� ���� � ��������� � ������ ������� � ��� ����������� �����. � �������� ����������� ��� �������� ���������� ������ ��������, ��� ���� ����� � �������� �������� ��������� �������. � ��������� �� ������ ����� ������� ��������� �����: �������� �� ����� ��������� � ������, �������� � ����������� ��������� � �������������, ����������� ��������� ������������� ����������, � ��� ����� ������ � �������. ������� ��������� ������, ����� ������� ����������� �������� �������� �������������� ����� ��Ѕ');
end;
select * from movies;
select GET_IMAGE_DIR1(1) from images;
delete from movies
---------------------------------------------------------
--������� movie-country
begin
insertmovie_country(1,1);
insertmovie_country(1,3);
insertmovie_country(1,5);
insertmovie_country(1,2);
insertmovie_country(2,4);
end;
select * from movie_country
select * from country
----------------------------------------------------------
--������� movie-soundtrack
begin
insertmovie_soundtrack(16,1);
insertmovie_soundtrack(17,1);
insertmovie_soundtrack(18,1);
insertmovie_soundtrack(19,1);
insertmovie_soundtrack(20,1);
insertmovie_soundtrack(21,1);
insertmovie_soundtrack(8,2);
insertmovie_soundtrack(9,2);
insertmovie_soundtrack(10,2);
insertmovie_soundtrack(11,2);
insertmovie_soundtrack(4,3);
insertmovie_soundtrack(5,3);
insertmovie_soundtrack(8,3);
insertmovie_soundtrack(9,3);
insertmovie_soundtrack(10,3);
insertmovie_soundtrack(11,3);
insertmovie_soundtrack(3,4);
insertmovie_soundtrack(12,4);
insertmovie_soundtrack(13,4);
insertmovie_soundtrack(14,4);
insertmovie_soundtrack(22,4);
insertmovie_soundtrack(1,5);
insertmovie_soundtrack(2,5);
insertmovie_soundtrack(7,5);
end;
delete from movie_soundtrack;
select * from movie_soundtrack;
select * from soundtrack;
-----------------------------------------------------------
--������� movie-actor
begin
insertmovies_actors(1,5);
insertmovies_actors(2,5);
insertmovies_actors(3,5);
insertmovies_actors(4,5);
insertmovies_actors(5,5);
insertmovies_actors(6,5);
insertmovies_actors(7,5);
insertmovies_actors(8,5);
insertmovies_actors(9,5);
insertmovies_actors(10,3);
insertmovies_actors(11,3);
insertmovies_actors(12,3);
insertmovies_actors(13,3);
insertmovies_actors(14,3);
insertmovies_actors(15,3);
insertmovies_actors(16,3);
insertmovies_actors(17,3);
insertmovies_actors(18,3);
insertmovies_actors(19,3);
insertmovies_actors(20,3);
insertmovies_actors(21,1);
insertmovies_actors(22,1);
insertmovies_actors(23,1);
insertmovies_actors(24,1);
insertmovies_actors(25,1);
insertmovies_actors(26,1);
insertmovies_actors(27,1);
insertmovies_actors(28,1);
insertmovies_actors(29,1);
insertmovies_actors(30,1);
insertmovies_actors(31,4);
insertmovies_actors(32,4);
insertmovies_actors(33,4);
insertmovies_actors(34,4);
insertmovies_actors(35,4);
insertmovies_actors(36,4);
insertmovies_actors(37,4);
insertmovies_actors(38,4);
insertmovies_actors(39,4);
insertmovies_actors(40,4);
insertmovies_actors(41,2);
insertmovies_actors(42,2);
insertmovies_actors(43,2);
insertmovies_actors(44,2);
insertmovies_actors(45,2);
insertmovies_actors(46,2);
insertmovies_actors(47,2);
insertmovies_actors(48,2);
end;
select * from movies_actors;
select * from actors;
delete from actors;
DELETE FROM movies_actors
------------------------------------------------------------------------
--������� movie_genre
begin
insertmovie_genre(1,12);
insertmovie_genre(1,10);


insertmovie_genre(2,10);
insertmovie_genre(2,2);
insertmovie_genre(3,10);
insertmovie_genre(3,12);

insertmovie_genre(4,10);
insertmovie_genre(4,8);

insertmovie_genre(5,12);

insertmovie_genre(5,8);
insertmovie_genre(5,10);
end;
select * from movies_genre;
select * from genre;
delete from movies_genre
----------------------------------------------
--������� images
begin
insertimages('escape.jpg');
insertimages('list.jpg');
insertimages('green.jpg');
insertimages('intouchable.jpg');
insertimages('wolf.jpg');
end;
select * from images;
----------------------------------------------
--������� trailer
delete from images
begin
inserttrailer('escape.mp4');
inserttrailer('list.mp4');
inserttrailer('greenMile.mp4');
inserttrailer('1+1.mp4');
inserttrailer('wolf.mp4');
end;
select * from trailer;
----------------------------------------------
select * from users;
delete from users;

