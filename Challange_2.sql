use onlinebookstore;

#PRIMARY KEY & FOREIGN KEY
create table books(
BookID int primary key,
Title_names varchar (100),
ISBN varchar (50)
);
create table orders(
OrderID int primary key,
Order_date Date,
BookID int,
foreign key (BookID) references books(BookID)
);

 #UNIQUE Constraint
 Alter table books
 ADD constraint unique_isbn UNIQUE (ISBN);
 
 insert into books(Book_ID, Titl_names, BookID, ISBN) values (601,"John",100);
 insert into orders(OrderID, Order_date, BookID) values (630,"2025-10-25",300); 
 
 # Delete vs Truncate
 delete from orders where BookID = 630;
 Truncate table orders;
 select * from books;
