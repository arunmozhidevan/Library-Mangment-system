-- table books created
create table books(
b_id int primary key,
b_name varchar(50),
b_author varchar(25),
b_genre varchar(25),
b_availablity varchar(25)
);

-- inserting book values
insert into books values
(1, 'Harry Potter and the Deathly Hallows', 'J. K. Rowling', 'Fantasy', 'Available'),
(2, 'Harry Potter and the Prisoner of Azkaban', 'J. K. Rowling', 'Fantasy', 'Issued'),
(3, 'Harry Potter and the Philosophers Stone', 'J. K. Rowling', 'Fantasy', 'Available'),
(4, 'Harry Potter and the Goblet of Fire', 'J. K. Rowling', 'Fantasy', 'Available'),
(5, 'Blood of Elves', 'Andrzej Sapkowski', 'Fantasy', 'Issued'),
(6, 'Time of Contempt ', 'Andrzej Sapkowski', 'Fantasy', 'Available'),
(7, 'Baptism of Fire ', 'Andrzej Sapkowski', 'Fantasy', 'Available'),
(8, 'The Tower of the Swallow', 'Andrzej Sapkowski', 'Fantasy', 'Issued'),
(9, 'The Lady of the Lake', 'Andrzej Sapkowski', 'Fantasy', 'Issued');

-- table books created
create table reader(
r_id int primary key,
r_name varchar(25)
);

-- inserting reader values
insert into reader values
(1001,'Arun'),
(1002,'Rick'),
(1003,'Morty'),
(1004,'Summer');

-- create table bookissue
create table bookissue(
r_id int references reader(r_id),
b_id int references books(b_id)
);

-- inserting reader values
insert into bookissue values
(1001,4),
(1002,8),
(1003,2),
(1004,9);

-- books table
select * from books;

-- books reader
select * from reader;

-- books bookissue
select * from bookissue;

SELECT * FROM mysql.user;

UPDATE mysql.user SET Password=PASSWORD('password') WHERE User='root';
FLUSH PRIVILEGES;