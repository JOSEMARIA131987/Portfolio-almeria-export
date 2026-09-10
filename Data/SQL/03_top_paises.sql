SELECT destination_country, SUM(value_eur) AS total_value
FROM exportaciones
GROUP BY destination_country
ORDER BY total_value DESC
LIMIT 10;
