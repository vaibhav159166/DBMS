/* Craete a trigger and procedure a sailar rating */


CREATE table sailar(sid int , sname varchar(10),srating int);

create table Reserve(sid int,Bid int , DOE date);

/* Create trigger for update rating */

DELIMITER //
CREATE trigger update_rating
Before INSERT
on reserve
for each ROW
Begin 
call update_sailar(New.sid);
end//

/* craete procedure for update sailar */

create PROCEDURE update_sailar(IN a int)
BEGIN
update sailar set srating=srating+1 
WHERE sid=a;
end//


insert into sailar values(101,'vaibhav',8);
insert into sailar values(102,'Ram',8);

/*

select * from sailar;

sid	sname	srating	
101	vaibhav	8	
102	Ram	8	
103	ketan	6	
104	gaurav	6	

*/
/* After applying trigger */

insert into reserve values(101,1021,'2023-04-12');

/*
select * from sailar;


sid	sname	srating	
101	vaibhav	9	
102	Ram	8	
103	ketan	6	
104	gaurav	6	

*/


/*

desc sailar;

sid	    int(11)	YES		NULL		
sname	varchar(10)	YES	NULL		
srating	int(11)	YES		NULL		
sid	    int(11)	YES		NULL		
Bid	    int(11)	YES		NULL		
DOE	     date	YES		NULL		



desc Reserve;

sid	int(11)	YES		NULL		
sname	varchar(10)	YES		NULL		
srating	int(11)	YES		NULL		
sid	int(11)	YES		NULL		
Bid	int(11)	YES		NULL		
DOE	date	YES		NULL		

*/

