SELECT 
    account_id, 
    count(transaction_id) as transaction_count, 
    sum(amount) as total_amount
FROM transactions
GROUP BY account_id
ORDER BY transaction_count desc;
