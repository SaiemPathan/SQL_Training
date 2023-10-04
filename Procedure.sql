
use day1;
delimiter $$
create procedure myprocedure()
begin
	select * from cars_dataset;
end $$
call myprocedure;

drop procedure myprocedure;
create procedure myprocedure1(in mkr varchar(50))
begin
	select * from cars_dataset where maker=mkr;
    end $$
call myprocedure1("Nissan");


delimiter $$
create procedure procedure2(out lol int)
begin select count(*) into lol from cars_dataset;
end $$
call procedure2(@a);
select @a;

create procedure totalhyundai(in mkrname varchar(30),out total int)
begin 
select count(*) into total from cars_dataset where maker=mkrname;
end $$
call totalhyundai('Hyundai',@h);
select @h;
select @h as 'Total';