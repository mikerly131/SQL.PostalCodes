-- Query that returns all the unique state names.
SELECT DISTINCT state
FROM zipcodes;


-- Query that returns all the Counties by State on separate lines.
-- I am not clear why "on separate lines" means exactly, isn't that how queries always get returned, by row?
SELECT DISTINCT county, state
FROM zipcodes;


-- Query that returns all the Counties by state, as a concatenated string.
-- I interpreted that as something like this.  The other ways I think the request can be interpreted have queries that don't require group by (es. all states and counties one one row)
SELECT state, GROUP_CONCAT(DISTINCT county SEPARATOR ', ')
FROM zipcodes
GROUP BY state;


-- Query that returns number of Counties by state.
SELECT state, COUNT(DISTINCT county)
FROM zipcodes
GROUP BY state;


-- Query that returns all of the individual timezones.
SELECT DISTINCT timezone
FROM zipcodes;

-- Notice anything peculiar?
--Yea, it looks like some mixed data types possibly, maybe zip codes, and some booleans
SELECT DISTINCT timezone
FROM zipcodes
LIMIT 10;

--+-------------------------+
--| timezone                |
--+-------------------------+
--| America/Puerto_Rico     |
--| America/New_York        |
--| FALSE                   |
--| America/Montreal        |
--| 34033|34015|34011|34001 |
--| 36057|36091|36035|36093 |
--| 36001|36093|36095|36057 |
--| 36053|36023|36067|36017 |
--| America/Toronto         |
--| 42085|42121|42019|42073 |
--+-------------------------+
--10 rows in set (0.01 sec)

-- Query that returns the zipcode, city, state, and county of all of the FALSE or NULL timezones.
SELECT zip, city, state, county
FROM zipcodes
WHERE timezone = 'FALSE' OR timezone = NULL;

