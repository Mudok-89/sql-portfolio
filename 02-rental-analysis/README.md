# Rental Analysis

This section contains SQL examples focused on rental activity and rental-related reporting using the Sakila database.

## Included examples

### 1. Payments and Rentals
A basic SQL join between the `rental` and `payment` tables showing payment and rental details.

### 2. Rental Report
A rental-level report combining data from `rental`, `payment`, `inventory`, and `film` tables. The report includes rental details, payment information, and film attributes with business-friendly column names.

### 3. Unpaid Rentals
An analytical query identifying rentals that do not have a matching payment record. This example demonstrates how to work with missing matches using outer joins.

## Skills demonstrated
- INNER JOIN
- multi-table joins
- aliasing
- reporting-oriented column naming
- combining transaction and descriptive data

## Dataset
Sakila sample database
