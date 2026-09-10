SELECT
    year,
    product,
    SUM(value_eur) AS valor_total,
    ROUND(
        SUM(value_eur) * 100.0 / SUM(SUM(value_eur)) OVER (PARTITION BY year),
        2
    ) AS porcentaje_participacion
FROM exportaciones
GROUP BY year, product
ORDER BY year, porcentaje_participacion DESC;
