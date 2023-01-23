use travego;
select * from passenger;
select * from price;

-- QUESTIONS AND ANSWERS

-- a.	How many females and how many male passengers traveled a minimum distance of 600 KMs?

select gender ,count(gender)  from passenger
where distance >=600
group by gender;


-- b.	Find the minimum ticket price of a Sleeper Bus. 

select pa.bus_type,min(pr.price) as minimum_price from passenger
pa inner join price pr 
on pa.bus_type = pr.bus_type and pa.distance = pr.distance
where pa.bus_type="sleeper";


-- c.	Select passenger names whose names start with character 'S' 

select passenger_name from passenger
where passenger_name like "s%";


-- d.	Calculate price charged for each passenger displaying Passenger name, Boarding City, Destination City, Bus_Type, Price in the output

Select pa.passenger_name, pa.boarding_city, pa.destination_city, pa.bus_type, pr.price from
 passenger pa inner join price pr 
 on pa.bus_type = pr.bus_type and pa.distance = pr.distance;
 


-- e.	What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus?  

select pa.passenger_name,pr.price from 
passenger pa inner join price pr 
on pa.bus_type=pr.bus_type and pa.distance=pr.distance
 where pa.distance=1000 and pa.bus_type="sitting";


-- f.	What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?

select pa.bus_type,pr.price from 
passenger pa inner join price pr 
on  pa.distance=pr.distance
where pa.passenger_name="pallavi" ;




-- g.	List the distances from the "Passenger" table which are unique (non-repeated distances) in descending order. 

select distance ,count(*) from passenger
group by distance
having count(distance)=1
order by distance desc;




-- h.	Display the passenger name and percentage of distance traveled by that passenger from the total distance traveled by all passengers without using user variables 

-- total distance travelled by all
select sum(distance) as total from passenger;


-- main query
select passenger_name, distance/ (select sum(distance) from passenger) *100 as percentage_travelled from passenger;


-- rounded
select passenger_name, round(distance/ (select sum(distance) from passenger) *100,2 )as percentage_travelled from passenger;





















































