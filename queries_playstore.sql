-- Comments in SQL Start with dash-dash --
-- Question 1: --
-- SELECT * FROM analytics WHERE id = 1880;

-- Question 2: --
-- SELECT id, app_name FROM analytics WHERE last_updated = '08/01/2018';

-- Question 3: --
-- SELECT category, COUNT(*) FROM analytics GROUP BY category;

-- Question 4: --
-- SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;

-- Question 5: --
-- SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews LIMIT 1;

-- Question 6: --
--  SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg DESC;

-- Question 7: --
-- SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

-- Question 8: --
-- SELECT * FROM analytics 
-- WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;

-- Question 9: --
-- SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;

-- Question 10: --
-- SELECT * FROM analytics WHERE price BETWEEN .10 AND 1 ORDER BY reviews DESC LIMIT 10;

-- Question 11: --
-- SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);
-- Alternative option --
-- SELECT * FROM analytics ORDER BY last_updated LIMIT 1;

-- Question 12: --
--SELECT * FROM analytics WHERE price = (SELECT MAX(PRICE) FROM analytics);
-- Alternative option --
-- SELECT * FROM analytics ORDER BY price DESC LIMIT 1;

-- Question 13: --
-- SELECT SUM(reviews) AS all_the_reviews FROM analytics;

-- Question 14: --
-- SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;

-- Question 15: --
-- SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion
-- FROM analytics
-- WHERE min_installs >= 100000
-- ORDER BY proportion DESC
-- LIMIT 1;

---FURTHER STUDY ---
--FS 1. --
-- SELECT app_name, rating FROM analytics 
-- WHERE (rating, category) IN (SELECT MAX(rating), category FROM analytics WHERE min_installs >= 50000 GROUP BY category) 
-- ORDER BY category;


--FS 2. --
-- SELECT * FROM analytics WHERE app_name ILIKE '%facebook%';

--FS 3. --
-- SELECT * FROM analytics WHERE array_length(genres, 1) = 2;

-- FS 4. --
-- SELECT * FROM analytics WHERE genres @> '{"Education"}';