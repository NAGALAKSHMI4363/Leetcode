# Write your MySQL query statement below
SELECT u.name, SUM(amount) AS balance
FROM Transactions t
INNER JOIN users u
ON t.account = u.account
GROUP BY u.name
HAVING SUM(amount) >10000