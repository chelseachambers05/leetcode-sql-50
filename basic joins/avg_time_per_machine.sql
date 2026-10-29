SELECT s.machine_id,
        ROUND(AVG(e.timestamp - s.timestamp), 3) as processing_time
FROM Activity as s
JOIN Activity as e
ON s.process_id = e.process_id and s.machine_id = e.machine_id
WHERE s.activity_type = 'start' and e.activity_type = 'end'
GROUP BY s.machine_id