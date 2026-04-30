-- Query 2 alternative: Count parks by populated place (OSM places_a)
SELECT
    pl.name AS place_name,
    COUNT(p.osm_id) AS park_count
FROM gis_osm_landuse_a_free_1 p
JOIN gis_osm_places_a_free_1 pl
    ON ST_Intersects(p.geom, pl.geom)
WHERE p.fclass = 'park'
GROUP BY pl.name
ORDER BY park_count DESC;