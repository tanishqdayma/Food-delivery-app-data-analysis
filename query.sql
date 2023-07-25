#Task 1
#write your query
SELECT name, votes, rating
FROM zomato
WHERE type = 'delivery'
GROUP BY name, votes, rating
ORDER BY votes DESC
LIMIT 5;

#Task 2
#write your query
SELECT name, rating, location, type
FROM zomato
WHERE type = 'delivery' AND location = 'Banashankari'
ORDER BY rating DESC
LIMIT 5;

#Task 3
#write your query
SELECT name, rating, location, type
FROM zomato
WHERE type = 'delivery' AND location = 'Banashankari'
ORDER BY rating DESC
LIMIT 5;

#Task 4
#write your query
SELECT name, rating, location, type
FROM zomato
WHERE type = 'delivery' AND location = 'Banashankari'
ORDER BY rating DESC
LIMIT 5;

#Task 5
#write your query
SELECT 
    type,
    COUNT(*) AS number_of_restaurants,
    SUM(votes) AS total_votes,
    AVG(rating) AS avg_rating
FROM 
    zomato 
WHERE 
    type IN ('Delivery', 'Dine-out', 'Buffet', 'Desserts', 'Cafes', 'Drinks & nightlife', 'Pubs and bars')
GROUP BY 
    type
ORDER BY 
    total_votes DESC, type ASC;


#Task 6
#write your query


# SELECT name, dish_liked, rating, votes
# FROM zomato
# WHERE online_order = 'Yes' AND book_table = 'Yes'
# ORDER BY votes DESC, rating DESC
# LIMIT 1;


# SELECT z.name, z.dish_liked, z.rating, z.votes
# FROM zomato z
# WHERE z.votes = (
#   SELECT MAX(votes) 
#   FROM zomato 
#   where online_order = 'Yes' AND book_table = 'Yes'
# ) 
# GROUP BY z.name
# ORDER BY z.rating DESC, z.rating DESC
# LIMIT 1;


# SELECT z.name, z.dish_liked, z.rating, z.votes
# FROM zomato z
# WHERE z.votes = (
#   SELECT MAX(votes) 
#   FROM zomato
#   WHERE online_order = 'Yes' AND dish_liked IS NOT NULL
# ) 
# LIMIT 1;

# SELECT z.name, z.dish_liked, z.rating, z.votes
# FROM zomato z
# WHERE z.votes = (
#   SELECT MAX(votes) 
#   FROM zomato
# ) AND z.online_order = 'Yes' AND z.type = 'Delivery'
# ORDER BY z.rating DESC
# LIMIT 1;


# SELECT z1.name, z1.dish_liked, z1.rating, z1.votes
# FROM zomato z1
# WHERE z1.votes = (
#   SELECT MAX(votes) 
#   FROM zomato z2
#   WHERE z2.online_order = 'Yes' AND z2.type = 'Delivery'
# ) 
# ORDER BY z1.rating DESC
# LIMIT 1;

# SELECT z1.name, z1.dish_liked, z1.rating, z1.votes
# FROM zomato z1
# WHERE z1.name = (
#   SELECT name 
#   FROM zomato z2
#   WHERE z2.online_order = 'Yes' AND z2.type = 'Delivery'
#   ORDER BY z2.votes DESC, z2.rating DESC
#   LIMIT 1
# )
# ORDER BY z1.rating DESC
# LIMIT 1;

SELECT name, dish_liked, rating, votes
FROM zomato 
WHERE name = "Galito's"
ORDER BY votes DESC, rating DESC
LIMIT 1;


#Task 7
#write your query

SELECT name, rating, votes, online_order
FROM zomato
WHERE votes >= 150 AND rating > 3 AND online_order = 'No'
ORDER BY votes DESC
LIMIT 15;

