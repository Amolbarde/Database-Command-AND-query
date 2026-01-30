SELECT branch, SUM(balance) AS total_balance
FROM accounts
GROUP BY branch
ORDER BY total_balance DESC
LIMIT 1;

