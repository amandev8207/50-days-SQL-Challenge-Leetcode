#1667. Fix Names in a Table

Table: Users

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| user_id        | int     |
| name           | varchar |
+----------------+---------+
user_id is the primary key (column with unique values) for this table.
This table contains the ID and the name of the user. The name consists of only lowercase and uppercase characters.
 

Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

Return the result table ordered by user_id.

# Write your MySQL query statement below
select user_id, CONCAT(ucase(substring(name,1,1)), lcase(substring(name,2)) ) as name 
from Users
order by user_id; 