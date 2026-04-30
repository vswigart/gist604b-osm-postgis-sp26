-- Query 1: Extract all park polygons from the Colorado landuse layer
SELECT
    osm_id,
    name,
    fclass,
    geom
FROM gis_osm_landuse_a_free_1
WHERE fclass = 'park';