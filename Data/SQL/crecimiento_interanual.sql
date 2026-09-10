SELECT
    year,
    SUM(value_eur) AS total_export,
    LAG(SUM(value_eur)) OVER (ORDER BY year) AS valor_anterior,
    SUM(value_eur) - LAG(SUM(value_eur)) OVER (ORDER BY year) AS crecimiento_eur,
    ROUND(
        (SUM(value_eur) - LAG(SUM(value_eur)) OVER (ORDER BY year)) 
        / LAG(SUM(value_eur)) OVER (ORDER BY year) * 100, 2
    ) AS crecimiento_pct
FROM exportaciones
GROUP BY year
ORDER BY year;
