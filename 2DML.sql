/*  Design at least 10 SQL queries for suitable database application using SQL DML 
statements: Insert, Select, Update, Delete with operators, functions, and set operator, all 
types of Join, Sub-Query and View. */

/* DML Insert values into table */

INSERT INTO car values(1006,'BAeno','Black',10);
INSERT INTO car values(1007,'Nano','white',9);
INSERT INTO car values(1008,'BMW','Blue',10);
INSERT INTO car values(1009,'TATA','Red',9);

SELECT * from car;

/*

cno	   cname	ccolor	crate	
1001	Thar	Black	9	
1002	swift	white	8	
1003	Baleno	Blue	10	
1005	Hundai	Red	     7	
1006	BAeno	Black	10	
1007	Nano	white	9	
1008	BMW 	Blue	10	
1009	TATA	Red	    9	

*/

Select * From car;
Select * From Customer;
Select * From Booking;

/* Select */
SELECT cname from car;
/*
cname	
Thar	
swift	
Baleno	
Hundai	
BAeno	
Nano	
BMW	
TATA	
*/

SELECT cno,custno from Booking;
/*

SELECT cno,custno from Booking;

1001	12	

*/

SELECT cname from car where crate=10;
/*
 
cname	
Baleno	
BAeno	
BMW	

*/

SELECT cname from car where crate=10 and ccolor='Blue';

/*

SELECT cname from car where crate=10 and ccolor='Blue';


cname	
Baleno	
BMW	

*/
SELECT count(*) from car;

/*

SELECT count(*) from car;

8	

*/
UPDATE car SET cname = 'Cui' WHERE cno=1002;
/*

UPDATE car
SET cname = 'Cui'
WHERE cno=1002;

select * from car;

cno	cname	ccolor	crate	
1001	Thar	Black	9	
1002	Cui	white	8	
1003	Baleno	Blue	10	
1005	Hundai	Red	7	
1006	BAeno	Black	10	
1007	Nano	white	9	
1008	BMW	Blue	10	
1009	TATA	Red	9	

*/
UPDATE car SET cname = 'Kwid' WHERE cno=1004;

DELETE FROM car where cno=1002;

/*

select * from car;

cno	cname	ccolor	crate	
1001	Thar	Black	9	
1003	Baleno	Blue	10	
1005	Hundai	Red	7	
1006	BAeno	Black	10	
1007	Nano	white	9	
1008	BMW	Blue	10	
1009	TATA	Red	9	

*/

DELETE FROM car where cname='TATA';