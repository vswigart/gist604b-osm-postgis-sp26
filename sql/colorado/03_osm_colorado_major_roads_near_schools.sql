-- Query 3: Total length of major roads within 1 km of schools in Colorado
WITH schools AS (
    SELECT geom
    FROM gis_osm_pois_free_1
    WHERE fclass = 'school'
),
major_roads AS (
    SELECT geom
    FROM gis_osm_roads_free_1
    WHERE fclass IN ('motorway', 'trunk', 'primary')
)
SELECT
    SUM(
        ST_Length(
            ST_Intersection(r.geom, ST_Buffer(s.geom, 1000))
        )
    ) AS total_length_m
FROM major_roads r
JOIN schools s
    ON ST_DWithin(r.geom, s.geom, 1000);