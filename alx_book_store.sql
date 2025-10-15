CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Books(
	PRIMARY KEY book_id,
	title VARCHAR(130),
	FOREIGN KEY (author_id) REFERENCES Authors(author_id),
	price DOUBLE,
	publication_date DATE
)

CREATE TABLE Authors(
	PRIMARY KEY author_id,
	author_name VARCHAR(215)
)


CREATE TABLE Customers(
	PRIMARY KEY customer_id,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT
)

CREATE TABLE Orders(
	PRIMARY KEY order_id,
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
	order_date DATE
)

CREATE TABLE Order_Details(
	PRIMARY KEY orderdetailid
	FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	FOREIGN KEY (book_id) REFERENCES Books(book_id),
	quantity DOUBLE
)