-- Query that returns all the Counties by state, as a concatenated string.
-- I interpreted that as something like this.  The other ways I think the request can be interpreted have queries that don't require group by (es. all states and counties one one row)

SELECT state, GROUP_CONCAT(DISTINCT county SEPARATOR ', ')
FROM zipcodes
GROUP BY state;
