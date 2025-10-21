SELECT 
    customer_id, sum(credit_amount) as total_credit, 
    round(sum(credit_amount * (interest_rate/100)),2) as interest_income,
    round(sum(credit_amount* (interest_rate/100)) / sum(credit_amount) * 100, 2) as profit
FROM credits
GROUP BY customer_id;
