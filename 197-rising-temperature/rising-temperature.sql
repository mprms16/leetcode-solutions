/* Write your T-SQL query statement below */
SELECT today.id
FROM Weather today
JOIN Weather yesterday ON yesterday.recordDate = DATEADD(DAY, -1, today.recordDate)
WHERE today.temperature > yesterday.temperature