SELECT assignments.id as id, assignments.day as day, assignments.name as name, assignments.chapter as chapter, count(*) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;