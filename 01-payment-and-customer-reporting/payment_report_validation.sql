-- Validation 1: check number of rows in the view
SELECT COUNT(*) AS row_count
FROM customer_payment_report_vw;

-- Validation 2: compare with number of customers who have at least one payment
SELECT COUNT(DISTINCT customer_id) AS paid_customers
FROM payment;

-- Validation 3: verify totals for a selected customer
SELECT
    customer_id,
    SUM(amount) AS total_payment_amount,
    COUNT(payment_id) AS payment_count,
    AVG(amount) AS avg_payment_amount,
    MAX(payment_date) AS last_payment_date
FROM payment
WHERE customer_id = 1
GROUP BY customer_id;

-- Validation 4: compare selected customer in the view
SELECT *
FROM customer_payment_report_vw
WHERE customer_id = 1;

-- the report aggregates payment activity at customer level
-- the result is stored as a SQL view
-- validation queries compare aggregated results with source payment data for selected customers
