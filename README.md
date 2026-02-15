# Topic: Correlated Subqueries

## Concept
In a correlated subquery, the inner query executes once for every row processed by the outer query.

## Problems Solved
### 1. Identify Products with Zero Sales
- **Objective:** Find products that have never been ordered.
- **Logic:** Used `NOT EXISTS` to check the `order_items` table.
- **Why NOT EXISTS?** It is "Null-safe" compared to `NOT IN` and stops searching (short-circuits) as soon as a match is found.
