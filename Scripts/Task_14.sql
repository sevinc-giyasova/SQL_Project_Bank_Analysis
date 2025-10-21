SELECT 
    customer_id, 
    round(avg(monthly_payment),2) as avg_monthly_credit 
FROM credits
GROUP BY customer_id
ORDER BY round(avg(monthly_payment),2) desc;
