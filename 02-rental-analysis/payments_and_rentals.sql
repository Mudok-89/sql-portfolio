-- Payments and Rentals
-- Basic join between rental and payment tables


-- Payments and rentals
-- Write a join for rental and payment tables. Display only the following columns:

-- payment_id,
-- rental_id,
-- amount,
-- rental_date,
-- payment_date.

SELECT
    p.payment_id,
    r.rental_id,
    p.amount,
    r.rental_date,
    p.payment_date
FROM rental AS r
INNER JOIN payment AS p
    ON r.rental_id = p.rental_id;
