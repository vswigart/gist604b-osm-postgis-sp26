# Assignment 5: OSM & PostGIS Spatial Analysis

- **Student:** Victoria Swigart
- **Course:** GIST 604B – Open Source GIS
- **Module:** Module 5 – OSM & PostGIS Spatial Analysis
- **University of Arizona**

## Project Description

This project develops a complete spatial analysis workflow using OpenStreetMap (OSM), PostGIS, and Python. The assignment integrates containerized database setup, automated OSM data loading, prepared spatial SQL queries, and notebook‑based analysis. It also includes adapting the workflow to a new area of interest (Colorado), designing custom SQL questions, and interpreting results through visualizations and narrative explanations.

## Tools and Technologies

- PostgreSQL + PostGIS
- Docker / Docker Compose
- Python (Jupyter Notebooks)
- VS Code PostgreSQL Explorer
- shp2pgsql + psql command‑line tools

## What I Did

- Forked the assignment repository and launched a PostGIS‑enabled Codespace
- Built a reusable Python workflow to create a PostGIS database and load OSM data
- Explored and ran prepared spatial SQL queries for the Arizona case study
- Executed SQL workflows through Jupyter Notebooks and inspected spatial and tabular outputs
- Adapted the workflow to Colorado with three custom SQL analyses and visualizations
- Created a personalized notebook (osm_postgis_queries_Swigart.ipynb) to document and interpret results

## How to View / Run

- Start the PostGIS container:  
docker compose up -d
- Run the setup workflow:  
Open notebooks/setup_osm_postgis.ipynb and run all cells
- Explore Arizona SQL queries:  
Open SQL files in sql/arizona/ and run them through PostgreSQL Explorer or via notebooks/osm_postgis_queries.ipynb
- Run Colorado AOI analysis:  
Open notebooks/osm_postgis_queries_Colorado.ipynb or notebooks/osm_postgis_queries_Swigart.ipynb
- Inspect results:  
View DataFrames, maps, and SQL outputs directly in the notebooks

## Repository Structure

```
├── .devcontainer/
│   ├── Dockerfile
│   └── devcontainer.json
├── notebooks/
│   ├── setup_osm_postgis.ipynb
│   ├── osm_postgis_queries.ipynb
│   ├── osm_postgis_queries_Swigart.ipynb
│   └── osm_postgis_queries_Colorado.ipynb
├── sql/
│   ├── arizona/
│   │   ├── 01_osm_restaurant_distribution.sql
│   │   ├── 02_osm_park_area_by_county.sql
│   │   ├── 03_osm_restaurants_near_streets.sql
│   │   ├── 04_osm_railway_density_by_county.sql
│   │   └── 05_osm_county_amenity_synthesis.sql
│   └── colorado/
│       ├── 01_osm_colorado_parks.sql
│       ├── 02_osm_colorado_parks_by_place.sql
│       └── 03_osm_colorado_major_roads_near_schools.sql
├── src/
│   └── setup_osm_postgis.py
├── docker-compose.yml
├── pyproject.toml
├── uv.lock
└── README.md
```
