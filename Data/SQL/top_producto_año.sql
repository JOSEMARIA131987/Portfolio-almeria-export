WITH ranking_por_año AS (
    SELECT
        product,
        year,
        SUM(value_eur) AS valor_total_expor,
        ROW_NUMBER() OVER (PARTITION BY year ORDER BY SUM(value_eur) DESC) AS ranking
    FROM exportaciones
    GROUP BY product, year
)
SELECT *
FROM ranking_por_año
WHERE ranking = 1;
