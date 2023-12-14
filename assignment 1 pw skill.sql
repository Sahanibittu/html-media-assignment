use mavenmovies;


SELECT * FROM information_schema.key_column_usage;      -- 1

select * from actor; -- 2
select * from customer; -- 3

select * from country;
select distinct country from country; -- 4

select * from customer;
select customer_id, first_name, last_name, email from customer where `active`= 1;
SELECT customer_id, first_name, last_name, email FROM customer WHERE `active`=1; -- 5

select * from rental;

SELECT rental_id FROM rental WHERE customer_id=1; -- 6

select * from film;
select film_id, title from film where rental_duration>5; -- 7
select count(*) from film where replacement_cost > 15 and replacement_cost < 20; -- 8

select * from actor;
select count(distinct first_name) from actor; -- 9

select * from customer  limit 10; -- 10

select * from customer where first_name like 'b%' limit 3; -- 11

select * from film;
select title from film where rating = 'G' limit 5; -- 12

select * from customer;
select * from customer where first_name like 'a%'; -- 13

select * from customer where first_name like '%a'; -- 14

select * from city;
select * from city where city like 'a%%a'; -- 15

select * from customer where first_name like '%ni%'; -- 16
select * from customer where first_name like '_r%'; -- 17
select * from customer where first_name like 'a____%';          -- 18
SELECT first_name FROM customer WHERE first_name LIKE 'a____%'; -- 18

select first_name from customer where first_name like 'a%o'; -- 19

select * from film; 
select title from film where rating in ( 'pg', 'pg-13');
select * from film where rating in ('pg', 'pg-13');      -- 20

select * from film where length between 50 and 100; -- 21

select * from actor;
select * from  actor limit 50; -- 22

select * from inventory;
select distinct film_id from inventory;  -- 23 










