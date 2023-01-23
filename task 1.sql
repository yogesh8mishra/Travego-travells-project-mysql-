-- "create the database "

create database travego;
use travego;

-- table passenger

create table passenger (
passenger_id int primary key auto_increment,
passenger_name varchar(20),
category varchar(20),
gender varchar (20),
boarding_city varchar(20),
destination_city varchar(20),
distance int,
bus_type varchar(20));

desc passenger;


-- "values of passenger table"

insert into passenger values
(1,"sejal","ac","f","bengaluru","chennai",350,"sleeper"),
(2,"anmol","non-ac","m","mumbai","hyderabad",700,"sitting"),
(3,"pallavi","ac","f","panaji","bengaluru",600,"sleeper"),
(4,"khusboo","ac","f","chennai","mumbai",1500,"sleeper"),
(5,"udit","non-ac","m","trivandrum","panaji",1000,"sleeper"),
(6,"ankur","ac","m","nagpur","hyderabad",500,"sitting"),
(7,"hemant","non-ac","m","panaji","mumbai",700,"sleeper"),
(8,"manish","non-ac","m","hyderabad","bengaluru",500,"sitting"),
(9,"piyush","ac","m","pune","nagpur",700,"sitting");

-- table price

create table price (
id int primary key ,
bus_type varchar(20),
distance int,
price int );

desc price;

-- values of price table

insert into price (id,bus_type,distance,price) values
(1,"sleeper",350,770),
(2,"sleeper",500,1100),
(3,"sleeper",600,1320),
(4,"sleeper",700,1540),
(5,"sleeper",1000,2200),
(6,"sleeper",1200,2640),
(7,"sleeper",1500,2700),
(8,"sitting",500,620),
(9,"sitting",600,744),
(10,"sitting",700,868),
(11,"sitting",1000,1240),
(12,"sitting",1200,1488),
(13,"sitting",1500,1860);


-- showing all the attribues and tuples
select * from price;
select * from passenger;
