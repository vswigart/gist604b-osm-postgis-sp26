-- Query 3: Identify major roads located within 250 meters of schools in Colorado.

WITH school_buffers AS (
    SELECT
        osm_id,
        name,
        ST_Buffer(geom, 250) AS geom
    FROM gis_osm_pois_free_1
    WHERE fclass = 'school'
),

major_roads AS (
    SELECT
        osm_id,
        name,
        fclass,
        geom
    FROM gis_osm_roads_free_1
    WHERE fclass IN ('motorway', 'trunk', 'primary', 'secondary')
)

SELECT
    r.osm_id AS road_id,
    r.name AS road_name,
    r.fclass AS road_type,
    s.osm_id AS school_id,
    s.name AS school_name,
    ST_Length(ST_Intersection(r.geom, s.geom)) AS clipped_length_m,
    r.geom
FROM major_roads r
JOIN school_buffers s
    ON ST_Intersects(r.geom, s.geom)
ORDER BY clipped_length_m DESC;