/* create cursor on dump table */

/* dump table is created */

create table car_dump(sid int,Bid int , BOB date);


/* procedure */

delimiter //
create procedure proc()
begin
	declare vfinished int default 0;
	declare i int(100);
	declare n int(100);
	declare p date;
	
	
	
declare bid_cursor cursor for select * from customer;
declare continue handler for not found set vfinished=1;

open bid_cursor;
getdata:loop
     fetch  bid_cursor into i,n,p;
     if vfinished=1 then
     leave getdata;
     end if;
    set n=n+0.20 * n;
    insert into car_dump values(i,n,p);
    end loop getdata;
    close bid_cursor;
    end //

/*

select * from reserve;


sid	Bid	 DOE	
101	13	 2022-05-12	
102	13	 2022-05-12	
101	1021 2023-04-12	

*/
