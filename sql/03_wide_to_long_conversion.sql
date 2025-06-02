CREATE TABLE long_median_salaries (
    region_code VARCHAR,
    region_name VARCHAR,
    local_authority_code VARCHAR,
    local_authority_name VARCHAR,
    year INT,
    salary NUMERIC
);

INSERT INTO long_median_salaries (region_code, region_name, local_authority_code, local_authority_name, year, salary)
SELECT 
    region_code,
    region_name,
    local_authority_code,
    local_authority_name,
    year,
    salary
FROM (
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        1997 AS year, salary_1997 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        1998 AS year, salary_1998 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        1999 AS year, salary_1999 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2000 AS year, salary_2000 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2001 AS year, salary_2001 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2002 AS year, salary_2002 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2003 AS year, salary_2003 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2004 AS year, salary_2004 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2005 AS year, salary_2005 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2006 AS year, salary_2006 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2007 AS year, salary_2007 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2008 AS year, salary_2008 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2009 AS year, salary_2009 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2010 AS year, salary_2010 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2011 AS year, salary_2011 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2012 AS year, salary_2012 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2013 AS year, salary_2013 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2014 AS year, salary_2014 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2015 AS year, salary_2015 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2016 AS year, salary_2016 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2017 AS year, salary_2017 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2018 AS year, salary_2018 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2019 AS year, salary_2019 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2020 AS year, salary_2020 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2021 AS year, salary_2021 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2022 AS year, salary_2022 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2023 AS year, salary_2023 AS salary 
    FROM median_salaries
    UNION ALL
    SELECT 
        region_code,
        region_name,
        local_authority_code,
        local_authority_name,
        2024 AS year, salary_2024 AS salary 
    FROM median_salaries
) AS long_format;
