SELECT 
    status, 
    sum(balance) AS total_balance,
    count( * )as account_count,
    round((sum(balance) * 100.0 / (SELECT sum(balance) FROM accounts)),2) AS balance_ratio
FROM accounts 
GROUP BY status;