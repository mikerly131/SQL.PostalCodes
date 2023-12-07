-- Query that finds the correct value for the missing timezones based on shared city, state or city, state, and county.
SELECT COUNT(city), state, timezone
FROM zipcodes
WHERE timezone = 'FALSE' OR timezone = NULL
GROUP BY city;