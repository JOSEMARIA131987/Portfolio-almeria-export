SELECT product, AVG(price_per_kg) AS avg_price_per_kg
FROM exportaciones
GROUP BY product
ORDER BY avg_price_per_kg DESC;
