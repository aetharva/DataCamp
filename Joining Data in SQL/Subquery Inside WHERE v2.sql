-- Select fields
SELECT c1.name, c1.country_code, c1.urbanarea_pop
  -- From cities
  FROM cities AS c1
-- Where city name in the field of capital cities
WHERE c1.name IN
  -- Subquery
  (SELECT c2.capital
   FROM countries AS c2)
ORDER BY urbanarea_pop DESC;