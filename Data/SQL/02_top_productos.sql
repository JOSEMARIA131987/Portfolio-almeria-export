SELECT product, SUM(value_eur) AS total_value
FROM exportaciones
GROUP BY product
ORDER BY total_value DESC
LIMIT 10;
