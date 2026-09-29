-- loading data to the silver table while removing duplicates (GRADE 10)

INSERT INTO [silver].[prelim_science_students_marks_grade10] 
  SELECT 
    A.student_id, 
    A.student_name, 
    A.grade, 
    A.mathematics_mark, 
    A.physical_science_mark,
    A.life_sciences_mark,
    A.english_home_language_mark,
    A.life_orientation_mark,
    A.information_technology_mark,
    A.agricultural_science_mark,
    A.total_mark,
    A.average_mark
FROM [willows_college_stg].[bronze].[prelim_science_students_marks_grade10] A
WHERE grade in ('10A', '10B')
AND NOT EXISTS (
SELECT 1
FROM [silver].[prelim_science_students_marks_grade10] B
WHERE A.student_id = B.student_id)

-- loading data to the silver table while removing duplicates (GRADE 11)
INSERT INTO [silver].[prelim_science_students_marks_grade11] 
  SELECT 
    A.student_id, 
    A.student_name, 
    A.grade, 
    A.mathematics_mark, 
    A.physical_science_mark,
    A.life_sciences_mark,
    A.english_home_language_mark,
    A.life_orientation_mark,
    A.information_technology_mark,
    A.agricultural_science_mark,
    A.total_mark,
    A.average_mark
FROM [willows_college_stg].[bronze].[prelim_science_students_marks_grade11] A
WHERE grade in ('11A', '11B')
AND NOT EXISTS (
SELECT 1
FROM [silver].[prelim_science_students_marks_grade11] B
WHERE A.student_id = B.student_id)


-- loading data to the silver table while removing duplicates (GRADE 12)
INSERT INTO [silver].[prelim_science_students_marks_grade12]
select 
a.student_id,
a.student_name,
a.grade,
a.mathematics_mark,
a.physical_science_mark,
a.life_sciences_mark,
a.english_home_language_mark,
a.life_orientation_mark,
a.information_technology_mark,
a.agricultural_science_mark,
a.total_mark,
a.average_mark
FROM [willows_college_stg].[bronze].[prelim_science_students_marks_grade12] a
WHERE grade in ('12A', '12B')
AND NOT EXISTS (
select 1
FROM [silver].[prelim_science_students_marks_grade12] B
WHERE a.student_id = B.student_id)
