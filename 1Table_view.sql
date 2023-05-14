/*  Study of Open Source Relational Databases: MySQL/Oracle and Design and Develop 
SQL DDL statements which demonstrate the use of SQL objects such as Table, View */

/* create 3 table of Car Rental System  */

CREATE table car(cno int(10) primary key,cname varchar(10),ccolor varchar(19), crate int);

desc car;

/*

cno	    int(10)	NO	PRI 	NULL		
cname	varchar(10)	YES		NULL		
ccolor	varchar(19)	YES		NULL		
crate	int(11)  	YES		NULL		
*/

CREATE table customer(custno int(10) primary key,custname varchar(10),custage int, BOD date);

desc customer

/*

custno	    int(10)	NO	PRI	NULL		
custname	varchar(10)	YES	NULL		
custage	    int(11)	YES		NULL		
BOD	        date	YES		NULL		

*/

CREATE table Booking(cno int(10),custno int,DOBookig date);

desc Booking;

/*


cno	     int(10)	YES		NULL		
custno   	int(11)	YES		NULL		
DOBookig	date	YES		NULL		

*/

/* Insert values into table */

INSERT INTO car values(1001,'Thar','Black',9);
INSERT INTO car values(1002,'swift','white',8);
INSERT INTO car values(1003,'Baleno','Blue',10);
INSERT INTO car values(1005,'Hundai','Red',7);

SELECT * from car;

/*

cno	cname	ccolor	crate	
1001	Thar	Black	9	
1002	swift	white	8	
1003	Baleno	Blue	10	
1005	Hundai	Red 	7	

*/

INSERT INTO customer values(11,"RAM",19,'2003-05-03');
INSERT INTO customer values(12,"Krish",23,'2000-06-03');

/*

SELECT * FROM `customer`;


custno	custname	custage	BOD	
11	RAM	19	2003-05-03	
12	Krish	23	2000-06-03	

*/

INSERT INTO Booking values(1001,12,'2023-04-12');

select * from Booking

/*

cno custno DOBookig
1001 12    2023-04-12

*/

/* -----       Craete View          -----*/

CREATE VIEW info AS SELECT cno,cname FROM car;
select * from info;

/*
cno	    cname	
1001	Thar	
1002	swift	
1003	Baleno	
1005	Hundai	
*/

/* Alter - Add extra columns */
Alter Table car Add cfuel varchar(10);
/*
select * from car;

cno	cname	ccolor	crate	cfuel	
1001	Thar	Black	9	NULL	
1002	swift	white	8	NULL	
1003	Baleno	Blue	10	NULL	
1005	Hundai	Red	    7	NULL	

*/
Alter table car modify cfuel varchar(10);

Alter table car drop cfuel;

/* Truncate */
Truncate table car;

/*	Drop the table */
Drop table car;

/* Rename */

Rename table car to new cars ;



