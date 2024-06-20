SELECT current_day.id
FROM Weather as current_day
WHERE EXISTS (
    SELECT 1
    FROM Weather as yesterday
    WHERE current_day.temperature > yesterday.temperature
        AND DATEDIFF(current_day.recordDate, yesterday.recordDate) = 1
)
