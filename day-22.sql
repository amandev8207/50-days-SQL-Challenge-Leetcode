#1193. Monthly Transactions I
Table: Transactions

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| country       | varchar |
| state         | enum    |
| amount        | int     |
| trans_date    | date    |
+---------------+---------+
id is the primary key of this table.
The table has information about incoming transactions.
The state column is an enum of type ["approved", "declined"].
 

Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

Return the result table in any order.

The query result format is in the following example.


# Write your MySQL query statement below
SELECT DATE_FORMAT(TRANS_DATE, '%Y-%m') AS MONTH, COUNTRY, COUNT(ID) AS TRANS_COUNT,
SUM(IF(STATE = 'approved', 1, 0)) AS APPROVED_COUNT, SUM(AMOUNT) AS TRANS_TOTAL_AMOUNT,
SUM(IF(STATE = 'approved', AMOUNT, 0)) AS APPROVED_TOTAL_AMOUNT FROM TRANSACTIONS
GROUP BY COUNTRY, MONTH;