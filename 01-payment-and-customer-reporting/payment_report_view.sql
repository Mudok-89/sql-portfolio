-- Payment Report
-- Customer-level payment report based on the Sakila database
-- Final output should be stored as a SQL view

CREATE VIEW payment_report_view_ps as
(
SELECT
     c.customer_id,
     concat(c.first_name, ' ', c.last_name) as zakaznik,
     c.email,
     SUM(amount)                            as total_payment_amount,
     COUNT(p.payment_id)                    as payment_count,
     AVG(p.amount)                 as avg_payment_amount,
     MAX(p.payment_date)           as last_payment_date
FROM payment p
join customer c on c.customer_id = p.customer_id
Group by c.customer_id,
         concat(c.first_name, ' ', c.last_name),
         c.email
);

SELECT * FROM payment_report_view_ps;
