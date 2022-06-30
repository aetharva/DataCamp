--Print all possible combinations without rows with same values
SELECT p1.country AS country1, p2.country AS country2, p1.continent
FROM geography AS p1
INNER JOIN geography AS p2
ON p1.continent = p2.continent AND p1.country <> p2.country