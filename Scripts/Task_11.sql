SELECT 
    to_char(transaction_date, 'Mon') as transaction_month,
    transaction_type,
    sum(amount) as monthly_amount
FROM transactions
WHERE transaction_type in ('Deposit', 'Withdrawal')
GROUP BY 
    extract(month from transaction_date), 
    to_char(transaction_date, 'Mon'), 
    transaction_type
ORDER BY
    extract(month from transaction_date), 
    transaction_type;