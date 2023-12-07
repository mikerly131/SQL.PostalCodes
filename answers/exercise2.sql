-- Query that returns all the Counties by State on separate lines.
-- I am not clear why "on separate lines" means exactly, isn't that how queries always get returned, by row?

SELECT DISTINCT county, state
FROM zipcodes;
