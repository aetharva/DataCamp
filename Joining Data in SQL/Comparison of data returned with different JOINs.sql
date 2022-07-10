--Comparison of data returned with different JOINs
SELECT countries.name, code, languages.name AS language
-- From languages
FROM languages
  -- Join to countries
  ___ ___ countries
    -- Match on code
    USING (code)
-- Where countries.name starts with V or is null
___ countries.name LIKE 'V%' OR countries.name IS NULL
-- Order by ascending countries.name
ORDER BY countries.name;
--58 rows
--56 for LEFT JOIN
--10 for INNER JOIN