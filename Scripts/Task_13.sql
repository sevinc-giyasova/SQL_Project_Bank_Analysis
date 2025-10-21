SELECT 
    status,  
    round(sum(credit_amount)* 100.0 / (select sum(credit_amount) from credits),2) as percentage
FROM credits
GROUP BY status;
