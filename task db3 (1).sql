CREATE DATABASE market;
CREATE TABLE  Customers (
ID INT NOT NULL PRIMARY KEY,
CustomerName varchar(255) default 'USA'
);

create table  orders(
ID INT NOT NULL PRIMARY KEY,
orderNumber INT NOT NULL,
status varchar (255)
);

create table Product(
ID INT NOT NULL PRIMARY KEY ,
ProductName varchar (255) NOT NULL,
Productline varchar (255) NOT NULL
);
ALTER TABLE Orders
add FOREIGN KEY Orders(ID) REFERENCES Customers (ID);

ALTER TABLE Product
ADD foreign key Products (ID) REFERENCES Orders (ID);


