-- Payment Report
-- Customer-level payment report based on the Sakila database
-- Final output should be stored as a SQL view

CREATE VIEW payment_report_view_ps as
(
SELECT
     c.customer_id,
     concat(c.first_name, ' ', c.last_name) as zakaznik,
     c.email,
     SUM(amount)                            as vyse_plateb,
     COUNT(p.payment_id)                    as pocet_plateb,
     AVG(p.amount)                 as prumerna_castka_platby,
     MAX(p.payment_date)           as posledni_datum_platby
FROM payment p
join customer c on c.customer_id = p.customer_id
Group by c.customer_id,
         concat(c.first_name, ' ', c.last_name),
         c.email
);

SELECT * FROM payment_report_view_ps;
