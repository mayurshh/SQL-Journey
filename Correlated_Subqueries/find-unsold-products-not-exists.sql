-- PROBLEM: Identify products with zero sales records.
-- LOGIC: Correlated subquery with NOT EXISTS (Short-circuit evaluation).
-- DIFFICULTY: Intermediate

SELECT
    p.product_name 
FROM products AS p
WHERE NOT EXISTS (
    SELECT oi.product_id
    FROM order_items AS oi
    WHERE p.product_id = oi.product_id
);