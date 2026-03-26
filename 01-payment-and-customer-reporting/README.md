# Payment and Customer Reporting

This section contains SQL examples focused on customer-level payment reporting using the Sakila database.

## Included example
### Payment Report
Prepare a customer payment report showing:
- client's first name
- client's last name
- client's email
- amount of payments
- number of payments
- average payment amount
- date of last payment

The final result is stored as a SQL view.

## Skills demonstrated
- JOINs
- GROUP BY
- aggregate functions (`SUM`, `COUNT`, `AVG`, `MAX`)
- views
- validation queries

## Files
- `payment_report_view.sql` – main SQL solution stored as a view
- `payment_report_validation.sql` – validation queries used to verify correctness of the report

## Validation
The solution is validated by comparing aggregated values in the view with source data from the `payment` table. Validation includes row count checks and comparison of totals, payment count, average payment amount, and last payment date for selected customers.

## Business interpretation
This report provides a customer-level summary of payment activity. It can be used to identify the most valuable customers, monitor payment behavior, and support customer segmentation or revenue reporting.

## Dataset
Sakila sample database
