-- ============================
-- DATA CLEANING
-- ============================

-- Check for nulls across the dataset (example: critic_score)
SELECT COUNT(*) 
FROM `vgchartz-2024` 
WHERE critic_score IS NULL;

-- Check for duplicate title + console combinations
SELECT title, console, COUNT(*) 
FROM `vgchartz-2024` 
GROUP BY title, console 
HAVING COUNT(*) > 1;

-- Confirm column data type before running numeric functions
DESCRIBE `vgchartz-2024`;

-- Check for blank/whitespace values (different from NULL)
SELECT COUNT(*) 
FROM `vgchartz-2024`
WHERE TRIM(critic_score) = '';

-- Validate the value range of critic_score, excluding nulls/blanks
SELECT 
    MIN(CAST(critic_score AS DECIMAL(10,1))) AS `min score`,
    MAX(CAST(critic_score AS DECIMAL(10,1))) AS `max score`
FROM `vgchartz-2024`
WHERE critic_score IS NOT NULL 
  AND TRIM(critic_score) != '';

-- ============================
-- ANALYSIS QUERIES
-- ============================

-- Total sales by genre
SELECT genre, CAST(SUM(total_sales) AS DECIMAL(10,2)) AS 'Total sales by genre'
FROM `vgchartz-2024`
GROUP BY genre
ORDER BY `Total sales by genre` DESC;

-- Total sales by console
SELECT console, CAST(SUM(total_sales) AS DECIMAL(10,2)) AS 'Total console sale'
FROM `vgchartz-2024`
GROUP BY console
ORDER BY `Total console sale` DESC;

-- Top 10 games by total sales across all platforms
SELECT title, CAST(SUM(total_sales) AS DECIMAL(10,2)) AS 'Total sales all platforms'
FROM `vgchartz-2024`
GROUP BY title
ORDER BY `Total sales all platforms` DESC
LIMIT 10;

-- Regional performance by genre
SELECT genre, 
    CAST(SUM(na_sales) AS DECIMAL(10,2)) AS 'na total', 
    CAST(SUM(jp_sales) AS DECIMAL(10,2)) AS 'jp total', 
    CAST(SUM(pal_sales) AS DECIMAL(10,2)) AS 'pal total', 
    CAST(SUM(other_sales) AS DECIMAL(10,2)) AS 'other total'
FROM `vgchartz-2024`
GROUP BY genre
ORDER BY `na total` DESC;

-- Publisher performance
SELECT publisher, 
    CAST(SUM(total_sales) AS DECIMAL(10,2)) AS 'Total publisher sales', 
    COUNT(*) AS 'Num games'
FROM `vgchartz-2024`
GROUP BY publisher
ORDER BY `Total publisher sales` DESC
LIMIT 15;

-- Sales trend by year
SELECT YEAR(release_date) AS year, CAST(SUM(total_sales) AS DECIMAL(10,2)) AS 'Total sales'
FROM `vgchartz-2024`
GROUP BY year
ORDER BY year;

-- Critic score vs sales by genre
SELECT genre, 
    CAST(AVG(critic_score) AS DECIMAL(10,2)) AS 'Avg critic score', 
    CAST(AVG(total_sales) AS DECIMAL(10,2)) AS 'Avg total sales'
FROM `vgchartz-2024`
WHERE critic_score IS NOT NULL AND TRIM(critic_score) != ''
GROUP BY genre
ORDER BY `Avg critic score` DESC;
