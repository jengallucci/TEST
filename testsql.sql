CREATE TABLE nyc_census_tract_geoms AS
SELECT
  ST_Union(wkb_geometry) AS geom,
  SubStr(blkid,1,11) AS tractid
FROM nyc_census_blocks
GROUP BY tractid;