-- Select fields
SELECT c2.name, c2.country_code, c2.city_proper_pop , c2.metroarea_pop  ,  
      -- Calculate city_perc
      c2.city_proper_pop / c2.metroarea_pop * 100 AS city_perc
  -- From appropriate table
  FROM cities AS c2
  -- Where 
  WHERE c2.name IN
    -- Subquery
    (SELECT c1.capital
     FROM countries AS c1
     WHERE (c1.continent = 'Europe'
        OR c1.continent LIKE '%America%'))
        AND c2.metroarea_pop IS NOT NULL
-- Order appropriately
ORDER BY city_perc DESC
-- Limit amount
LIMIT 10;