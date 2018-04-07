--Вставка страны
begin insertcountry('Франция');end;
begin insertcountry('Германия');end;
SELECT * FROM country;
-----------------------------------------------------
--Вставка саундтреков
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
--Вставка актеров
begin
insertactor('Мэттью МакКонахи');
insertactor('Жан Дюжарден');
insertactor('Кристин Милиоти');
insertactor('П.Дж. Бирн');
insertactor('Роб Райнер');
insertactor('Кайл Чандлер');
insertactor('Марго Робби');
insertactor('Джона Хилл');
insertactor('Леонардо ДиКаприо');
insertactor('Леонардо ДиКаприо');
end;
--Зеленая миля
begin
insertactor('Том Хэнкс');
insertactor('Дэвид Морс');
insertactor('Майкл Кларк Дункан');
insertactor('Бонни Хант');
insertactor('Джеймс Кромуэлл');
insertactor('Майкл Джитер');
insertactor('Грэм Грин');
insertactor('Даг Хатчисон');
insertactor('Сэм Рокуэлл');
insertactor('Барри Пеппер');
end;
--Pobeg iz shoushenko
begin
insertactor('Тим Роббинс');
insertactor('Морган Фриман');
insertactor('Боб Гантон');
insertactor('Уильям Сэдлер');
insertactor('Клэнси Браун');
insertactor('Джил Беллоуз');
insertactor('Марк Ролстон');
insertactor('Джеймс Уитмор');
insertactor('Джеффри ДеМанн');
insertactor('Ларри Бранденбург');
end;
--1+1
begin
insertactor('Франсуа Клюзе');
insertactor('Омар Си');
insertactor('Анн Ле Ни');
insertactor('Одри Флеро');
insertactor('Жозефин де Мо');
insertactor('Клотильд Молле');
insertactor('Альба Гайя Крагеде Беллуджи');
insertactor('Сирил Менди');
insertactor('Салимата Камате');
insertactor('Абса Дьяту Тур');

end;
--spisok
begin
insertactor('Лиам Нисон');
insertactor('Бен Кингсли');
insertactor('Рэйф Файнс');
insertactor('Кэролайн Гудолл');
insertactor('Эмбет Дэвидц');
insertactor('Йонатан Сэгаль');
insertactor('Малгоша Гебель');
insertactor('Шмуэль Леви');
insertactor('Марк Иванир');
insertactor('Беатриче Макола');

end;
delete from actors;
select * from actors;
---------------------------------------------------------------
--вставка жанра
begin
insertgenre('фантастика');
insertgenre('триллер');
insertgenre('романтика');
insertgenre('детектив');
insertgenre('ужасы');
insertgenre('мультфильм');
insertgenre('приключения');
insertgenre('комедия');
insertgenre('арт-хаус');
insertgenre('драма');
insertgenre('документальный');
end;
begin
insertgenre('биография');
end;
select * from genre;
---------------------------------------------
--Вставка Фильм
begin
insertmovies('Побег из Шоушенко','10.09.1994',142,'Успешный банкир Энди Дюфрейн обвинен в убийстве собственной жены и ее любовника. Оказавшись в тюрьме под названием Шоушенк, он сталкивается с жестокостью и беззаконием, царящими по обе стороны решетки. Каждый, кто попадает в эти стены, становится их рабом до конца жизни. Но Энди, вооруженный живым умом и доброй душой, отказывается мириться с приговором судьбы и начинает разрабатывать невероятно дерзкий план своего освобождения.');
insertmovies('Список Шиндлера','21.05.1993',195,'Фильм рассказывает реальную историю загадочного Оскара Шиндлера, члена нацистской партии, преуспевающего фабриканта, спасшего во время Второй мировой войны почти 1200 евреев.');
insertmovies('Зеленая миля','06.12.1999',189,'Обвиненный в страшном преступлении, Джон Коффи оказывается в блоке смертников тюрьмы «Холодная гора». Вновь прибывший обладал поразительным ростом и был пугающе спокоен, что, впрочем, никак не влияло на отношение к нему начальника блока Пола Эджкомба, привыкшего исполнять приговор.');
insertmovies('1+1','26.09.2011',112,'Пострадав в результате несчастного случая, богатый аристократ Филипп нанимает в помощники человека, который менее всего подходит для этой работы, — молодого жителя предместья Дрисса, только что освободившегося из тюрьмы. Несмотря на то, что Филипп прикован к инвалидному креслу, Дриссу удается привнести в размеренную жизнь аристократа дух приключений');
insertmovies('Волк с Уолл-стрит','06.02.2013',180,'1987 год. Джордан Белфорт становится брокером в успешном инвестиционном банке. Вскоре банк закрывается после внезапного обвала индекса Доу-Джонса. По совету жены Терезы Джордан устраивается в небольшое заведение, занимающееся мелкими акциями. Его настойчивый стиль общения с клиентами и врождённая харизма быстро даёт свои плоды. Он знакомится с соседом по дому Донни, торговцем, который сразу находит общий язык с Джорданом и решает открыть с ним собственную фирму. В качестве сотрудников они нанимают нескольких друзей Белфорта, его отца Макса и называют компанию «Стрэттон Оукмонт». В свободное от работы время Джордан прожигает жизнь: лавирует от одной вечеринки к другой, вступает в сексуальные отношения с проститутками, употребляет множество наркотических препаратов, в том числе кокаин и кваалюд. Однажды наступает момент, когда быстрым обогащением Белфорта начинает интересоваться агент ФБР…');
end;
select * from movies;
select GET_IMAGE_DIR1(1) from images;
delete from movies
---------------------------------------------------------
--Вставка movie-country
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
--Вставка movie-soundtrack
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
--Вставка movie-actor
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
--Вставка movie_genre
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
--Вставка images
begin
insertimages('escape.jpg');
insertimages('list.jpg');
insertimages('green.jpg');
insertimages('intouchable.jpg');
insertimages('wolf.jpg');
end;
select * from images;
----------------------------------------------
--Вставка trailer
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

