SELECT st.student_id, st.student_name, su.subject_name, COUNT(e.subject_name) as attended_exams
FROM Students as st
CROSS JOIN Subjects as su
LEFT JOIN Examinations as e ON st.student_id = e.student_id AND e.subject_name = su.subject_name
GROUP BY st.student_id, st.student_name, su.subject_name
ORDER BY st.student_id, st.student_name