--1.

--2.

--3.
use bookstore
go
create index pub_date_index
on books(pub_date DESC)
--4.
sp_rename 'books.pub_date_index','cbsj_index'
--5.
drop index books.book_isbn_index