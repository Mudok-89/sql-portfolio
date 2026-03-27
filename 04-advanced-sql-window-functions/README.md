# Advanced SQL and Window Functions

This section contains SQL examples focused on analytical window functions using the Sakila database.

## Included examples

### 1. Ranking
A set of SQL examples using `RANK()`, `DENSE_RANK()`, and `ROW_NUMBER()` to rank films by number of rentals. The analysis also includes partitioning by film rating.

### 2. Cumulative Sum
An example of cumulative calculations using window functions and `ORDER BY`. This task demonstrates how to calculate running analytical values such as cumulative minimum, cumulative sum, and cumulative maximum.

### 3. Pareto Principle
An analytical example applying the Pareto principle to actor performance. The goal is to estimate what percentage of actors is responsible for what percentage of total rental shop income.

## Skills demonstrated
- window functions
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `OVER()`
- `PARTITION BY`
- `ORDER BY` in window functions
- cumulative calculations
- percentage-based analysis
- Pareto-style analytical thinking

## Business interpretation
These examples demonstrate how SQL can be used not only for reporting, but also for advanced analytical tasks such as ranking, cumulative analysis, and concentration of performance. This type of analysis is useful for identifying top-performing entities and understanding distribution patterns in business data.

## Dataset
Sakila sample database
