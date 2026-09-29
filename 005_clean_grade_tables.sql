--- Set grade band to grade 10 only without sub-class 
UPDATE [silver].[prelim_science_students_marks_grade10]
SET grade = LEFT(grade, LEN(grade) - 1)
WHERE grade LIKE '%[A-Z]';

--- Set grade band to grade 11 only without sub-class
UPDATE [silver].[prelim_science_students_marks_grade11]
SET grade = LEFT(grade, LEN(grade) - 1)
WHERE grade LIKE '%[A-Z]';

--- Set grade band to grade 12 only without sub-class
UPDATE [silver].[prelim_science_students_marks_grade12] 
SET grade = LEFT(grade, LEN(grade) - 1)
WHERE grade LIKE '%[a-Z]';