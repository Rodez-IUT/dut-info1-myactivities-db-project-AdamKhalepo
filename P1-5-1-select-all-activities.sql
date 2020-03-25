SELECT title, description, username
FROM activity
JOIN "user" 
ON "user".id = owner_id
WHERE creation_date > '2019-09-01'
ORDER BY title