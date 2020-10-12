SELECT cohorts.name as cohort, count(*) as total_assignments
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name 
ORDER BY total_assignments DESC;