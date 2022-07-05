-- Simple example

SELECT monarchs.continent
FROM monarchs, states
WHERE monarchs.continent = states.continent
ORDER BY continent

-- Return continent & aggregate funciton column

SELECT DISTINCT monarchs.continent, subquery.max_perc
FROM monarchs,
  (SELECT continent, MAX(women_parli_perc) AS ,max_perc
  FROM states
  GROUP BY continent) AS subquery
WHERE monarchs.continent = subquery.continent
ORDER BY continent