SELECT manager.name
FROM Employee as manager
JOIN Employee as report
ON report.managerId = manager.id
GROUP BY manager.id, manager.name
HAVING COUNT(*) >= 5