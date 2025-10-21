SELECT 
    c.customer_id,
    sum(a.balance) AS total_balance,
    sum(c.credit_amount) AS credit_amount
CASE 
    WHEN sum(a.balance) = 0 THEN NULL
    ELSE round(sum(c.credit_amount) / sum(a.balance), 2)
    END AS credit_to_balance_ratio
FROM credits c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id
ORDER BY credit_to_balance_ratio DESC;