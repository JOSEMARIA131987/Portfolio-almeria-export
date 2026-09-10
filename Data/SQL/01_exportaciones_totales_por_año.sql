SELECT year, SUM(value_eur) AS total_export
FROM exportaciones
GROUP BY year
ORDER BY year;
