--Subquery
-- Select code
SELECT l.name
  -- From countries
  FROM languages AS l
-- Where region is Middle East
WHERE l.code IN (SELECT code
                FROM countries
                WHERE region = 'Middle East');