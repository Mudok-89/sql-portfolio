-- Unpaid Rentals
-- Find rentals that do not have a matching payment

SELECT
    r.rental_id,
    r.rental_date,
    p.payment_id,
    p.amount,
    p.payment_date
FROM rental AS r
LEFT JOIN payment AS p
    ON r.rental_id = p.rental_id
WHERE p.payment_id IS NULL;

-- Alternative approach:
-- The same result can also be achieved using RIGHT JOIN.
