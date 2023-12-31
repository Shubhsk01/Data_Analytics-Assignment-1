-- Q1.  Identify the primary keys and foreign keys in maven movies db. Discuss the differences ?
-- Solution -
-- primary key is used to  uniquely identify a column while foreign key references a column in another table.

-- Q2.  List all details of actors ?
-- Solution:
select * from actor;

-- Q3. List all customer information from DB.?
-- Solution:
select * from customer;

-- Q4. List different countries.?
-- Solution:
select distinct(country) from country;

-- Q5. Display all active customers.?
-- Solution:
select customer_id , first_name , last_name from customer;

-- Q6. List of all rental IDs for customer with ID 1.?
-- Solution:
select rental_id from rental where customer_id=1;

-- Q7. Display all the films whose rental duration is greater than 5.?
-- Solution:
select title from film where rental_duration > 5;

-- Q8.  List the total number of films whose replacemnet cost is greater than $15 and less than  $20.?
-- Solution:
select count(*) from film where replacement_cost > 15 and replacement_cost < 20;

-- Q9. Display the count of unique first names of actors.?
-- Solution:
select count(distinct(first_name)) from actor;

-- Q10. Display the first 10 recods from the customer table?
-- Solution:
select * from customer limit 10;

-- Q11. Display the first 3 records from the customer table whose first name starts with 'b'?
-- Solution:
select * from customer where first_name like 'b%' limit 3;

-- Q12. Display the names of first 5 movies which are rated as G.?
-- Solution:
select title from film where rating = "G" limit 5;

-- Q13. Find all customers whose first name starts with "a".?
-- Solution:
select * from customer where first_name like 'a%';

-- Q14. Find all customers whose first name ends with "a".?
-- Solution:
select * from customer where first_name like "%a";

-- Q15. Display the list of first 4 cities which start and end with ‘a’?
-- Solution:
select city from city where city like "a%a" limit 4;

-- Q16. Find all customers whose first name have "NI" in any position ?
-- Solution:
select first_name from customer where first_name like "%ni%";

-- Q17. Find all customers whose first name have "r" in the second position ?
-- Solution:
select first_name from customer where first_name like "_r%";

-- Q18. Find all customers whose first name starts with "a" and are at least 5 characters in length ?
-- Solution:
select first_name from customer where first_name like "a%" and length(first_name) >= 5;

-- Q19. Find all customers whose first name starts with "a" and ends with "o" ?
-- Solution:
select first_name from customer where first_name like "a%o";

-- Q20. Get the films with pg and pg-13 rating using IN operator ?
-- Solution:
select title , rating from film where rating in ("pg" , "pg-13");

-- Q21. Get the films with length between 50 to 100 using between operator ?
-- Solution:
select title , length from film where length between 50 and 100 ;

-- Q22. Get the top 50 actors using limit operator ?
-- Solution:
select * from actor limit 50;

-- Q23. Get the distinct film ids from inventory table ?
-- Solution:
select distinct(film_id) from inventory;