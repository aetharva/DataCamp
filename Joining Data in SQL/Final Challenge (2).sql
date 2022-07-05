-- Select fields
SELECT c1.region, c1.continent, AVG(p.fertility_rate) AS avg_fert_rate
  -- From left table
  FROM countries AS c1
    -- Join to right table
    INNER JOIN populations AS p
      -- Match on join condition
      ON c1.code = p.country_code
  -- Where specific records matching some condition
  WHERE p.year = 2015
-- Group appropriately
GROUP BY region, continent
-- Order appropriately
ORDER BY avg_fert_rate;