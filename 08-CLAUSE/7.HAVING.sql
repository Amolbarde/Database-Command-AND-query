
SELECT branch, SUM(balance) AS total_balance
FROM accounts
GROUP BY branch
HAVING SUM(balance) > 4000;

