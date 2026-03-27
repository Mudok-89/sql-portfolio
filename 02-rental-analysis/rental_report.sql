-- Rental Report
-- Report combining rental, payment, inventory, and film details


-- Using the queries and the joining method from the previous tasks, write a query that returns the following information about the rental:

-- rental id,
-- film id,
-- film title,
-- film description,
-- film rating,
-- rental rating,
-- rental date,
-- payment date,
-- payment amount.
-- Name the columns so that a person who opens the report for the first time has no problem understanding the meaning and does not need to guess what a name such as title refers to.

SELECT
    r.rental_id AS rental_id,
    i.film_id   AS film_id,
    f.title AS film_title,
    f.description AS film_description,
    f.rating AS film_rating,
    f.rental_rate AS rental_rate,
    r.rental_date AS rental_date,
    p.payment_date AS payment_date,
    p.amount AS payment_amount
FROM rental AS r
INNER JOIN inventory AS i 
  ON i.inventory_id = r.inventory_id
INNER JOIN film AS f 
  ON i.film_id = f.film_id
INNER JOIN payment AS p 
  ON r.rental_id = p.rental_id;
