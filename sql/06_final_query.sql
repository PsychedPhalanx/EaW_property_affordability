SELECT 
    s.local_authority_name AS lad_name,
	s.local_authority_code AS lad_code,
    s.region_name AS region_name,
    s.year AS year,
    MAX(s.salary) AS median_salary,
    MAX(s.salary * c.factor) AS adjusted_median_salary,
    CASE 
        WHEN p.property_type = 'D' THEN 'Detached'
        WHEN p.property_type = 'S' THEN 'Semi-Detached'
        WHEN p.property_type = 'T' THEN 'Terraced'
        WHEN p.property_type = 'F' THEN 'Flat/Maisonette'
        WHEN p.property_type = 'O' THEN 'Other'
        ELSE 'Unknown'
    END AS property_type,
    CASE 
        WHEN p.old_new = 'N' THEN 'New Build'
        WHEN p.old_new = 'Y' THEN 'Old Build'
        ELSE 'Unknown'
    END AS build_status,
	COUNT(p.price) AS property_count,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY p.price) AS median_price,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY p.price * c.factor) AS adjusted_median_price
FROM 
    long_median_salaries AS s
LEFT JOIN 
    price_paid_data AS p
    ON UPPER(s.local_authority_name) = UPPER(p.district)
    AND EXTRACT(YEAR FROM p.date_of_transfer) = s.year
LEFT JOIN 
    cpi AS c
    ON s.year = c.year
GROUP BY
    s.local_authority_name, s.local_authority_code, s.region_name, s.year,
    CASE 
        WHEN p.property_type = 'D' THEN 'Detached'
        WHEN p.property_type = 'S' THEN 'Semi-Detached'
        WHEN p.property_type = 'T' THEN 'Terraced'
        WHEN p.property_type = 'F' THEN 'Flat/Maisonette'
        WHEN p.property_type = 'O' THEN 'Other'
        ELSE 'Unknown'
    END,
    CASE 
        WHEN p.old_new = 'N' THEN 'New Build'
        WHEN p.old_new = 'Y' THEN 'Old Build'
        ELSE 'Unknown'
    END;
