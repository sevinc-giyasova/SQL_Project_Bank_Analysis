SELECT  
    extract(year from transaction_date) as transaction_year,
    to_char(transaction_date, 'Mon') as transaction_month,
    count(transaction_id) as transaction_count,
    sum(amount) as total_amount
FROM transactions
GROUP BY 
    extract (year from transaction_date), 
    extract (month from transaction_date), 
    to_char(transaction_date, 'Mon')
ORDER BY 
    extract (year from transaction_date), 
    extract (month from transaction_date);