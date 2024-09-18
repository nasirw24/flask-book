create database book_flask

create table books(
	id integer primary key,
	name varchar(64) unique not null,
	author varchar(64),
	year_published integer,
	book_type varchar(20),
	status varchar(20)
);

create table customers(
	id integer primary key,
	name varchar(64) unique not null,
	city varchar(64),
	age integer
);

create table loans(
	id integer primary key,
	customer_name varchar(64) not null,
	book_name varchar(64) not null,
	loan_date timestamp not null,
	return_date timestamp not null,
	original_author varchar(64) not null,
	original_year_published integer not null,
	original_book_type varchar(64) not null
);