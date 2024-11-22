# Write your MySQL query statement below
DELETE p
FROM Person p
JOIN (
    SELECT MIN(id) AS id, email
    FROM Person
    GROUP BY email
) AS to_keep
ON p.email = to_keep.email
WHERE p.id > to_keep.id;
