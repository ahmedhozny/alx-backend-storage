-- Retrieve total fans per origin from metal_bands,
-- ordered by total fans descending.
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
