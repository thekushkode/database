-- 1.) all reviews for specific restaurant id
SELECT review FROM review
WHERE rest_id = 2;

-- 2.) all reviews based on restaurant name given
SELECT review FROM review
INNER JOIN new_rest
ON new_rest.id = review.rest_id AND new_rest.rest_name = 'Chick-Fil-A';

-- 3.) all reviews for a given author. Added rest_id so we know hat review is for.
SELECT review, rest_id FROM review
INNER JOIN reviewer
ON reviewer.id = review.revs_id AND reviewer.revs_name = 'Bugs Bunny';

-- 4.) all reviews and corresponding restaurant
SELECT review.review, new_rest.rest_name FROM review
INNER JOIN new_rest
ON new_rest.id = review.rest_id;
-- if had more reviews could use ORDER

-- 5.) average stars by rest.
SELECT new_rest.rest_name, AVG(stars) FROM review
INNER JOIN new_rest
ON new_rest.id = review.rest_id
GROUP BY new_rest.rest_name;

-- 6.) Get number of reviews written for each rest. rest name and review ct
SELECT new_rest.rest_name, COUNT(review) FROM review
INNER JOIN new_rest
ON new_rest.id = review.rest_id
GROUP BY new_rest.rest_name;

-- 7.) List all reviews w/ restaurant + reviewer's name. rest, reviw text, rev name
SELECT new_rest.rest_name, reviewer.revs_name, review FROM review
INNER JOIN new_rest ON new_rest.id = review.rest_id
INNER JOIN reviewer ON reviewer.id = review.revs_id;

-- 8.) Get avg stars given by each reviewer. reviewer name, avg stars given
SELECT AVG(stars), reviewer.revs_name FROM review
INNER JOIN reviewer ON reviewer.id = review.revs_id
GROUP BY reviewer.revs_name;

-- 9.) Get lowest star rating given by each reviewer. rev_name, lowest rating
SELECT MIN(stars), reviewer.revs_name FROM review
INNER JOIN reviewer ON reviewer.id = review.revs_id
GROUP BY reviewer.revs_name;

-- 10.) Get number of restaurants in each category. category, rest count
SELECT COUNT(new_rest.rest_name), new_rest.category FROM new_rest
GROUP BY new_rest.category;

-- 11.) Get number of 5-star reviews by restaurant, rest name + # of 5-star