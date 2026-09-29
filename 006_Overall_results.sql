--- Add a column for students who fail for grade 10
ALTER TABLE [silver].[prelim_science_students_marks_grade10]
ADD subjects_failed INT NULL;

--- Add a column for students who fail for grade 11
ALTER TABLE [silver].[prelim_science_students_marks_grade11]
ADD subjects_failed INT NULL;

--- Add a column for students who fail for grade 12
ALTER TABLE [silver].[prelim_science_students_marks_grade12]
ADD subjects_failed INT NULL;