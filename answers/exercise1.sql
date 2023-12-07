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



-- Query that returns all of the individual timezones.


-- Notice anything peculiar?