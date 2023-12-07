-- Query that returns the city, state and number of instances of all of the FALSE or NULL timezones.
SELECT COUNT(city), state, timezone
FROM zipcodes
WHERE timezone = 'FALSE' OR timezone = NULL
GROUP BY city;