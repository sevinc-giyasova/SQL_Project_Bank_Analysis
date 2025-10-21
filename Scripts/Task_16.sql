SELECT c.city,
    count(case when cr.status = 'Defaulted' Then 1 end) as risky_loans,
    count(*) as total_loans,
    round(count(case when cr.status = 'Defaulted' Then 1 end) * 100.0 / count(*), 2) as risk_ratio_percent
FROM credits cr
JOIN customers c on c.customer_id = cr.customer_id
GROUP BY c.city
ORDER BY risk_ratio_percent desc;
