-- Retrieve band lifespan (or 2022 if unknown) from
-- metal_bands of style Glam rock, ordered by lifespan.
SELECT band_name, (IFNULL(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE FIND_IN_SET('Glam rock', style)
ORDER BY lifespan DESC;
