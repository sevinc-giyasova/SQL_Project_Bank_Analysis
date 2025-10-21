SELECT 
    c.customer_id,
    c.full_name,
    cr.credit_id,
    cr.credit_amount,
    sum(cr.credit_amount) over (partition by c.customer_id) as total_credit_amount
FROM credits cr
LEFT JOIN customers c ON c.customer_id = cr.customer_id
ORDER BY c.customer_id, cr.start_date;