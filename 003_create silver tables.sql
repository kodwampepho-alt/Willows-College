--- create silver tables
use [willows_college_dwh]

--Create silver table (grade 10)
IF NOT EXISTS (SELECT 1 FROM sys.tables t JOIN sys.schemas s ON t.schema_id = s.schema_id
               WHERE s.name = 'silver' AND t.name = 'prelim_science_students_marks_grade10')
BEGIN
    CREATE TABLE silver.prelim_science_students_marks_grade10 (
        student_id                    NVARCHAR(50),
        student_name                  NVARCHAR(200),
        grade                         NVARCHAR(10),
        mathematics_mark              DECIMAL(5,2),
        physical_science_mark         DECIMAL(5,2),
        life_sciences_mark            DECIMAL(5,2),
        english_home_language_mark    DECIMAL(5,2),
        life_orientation_mark         DECIMAL(5,2),
        information_technology_mark   DECIMAL(5,2),
        agricultural_science_mark     DECIMAL(5,2),
        total_mark                    DECIMAL(6,2),
        average_mark                  DECIMAL(5,2)
    );
END
GO

--Create silver table (grade 11)
IF NOT EXISTS (SELECT 1 FROM sys.tables t JOIN sys.schemas s ON t.schema_id = s.schema_id
               WHERE s.name = 'silver' AND t.name = 'prelim_science_students_marks_grade11')
BEGIN
    CREATE TABLE silver.prelim_science_students_marks_grade11 (
        student_id                    NVARCHAR(50),
        student_name                  NVARCHAR(200),
        grade                         NVARCHAR(10),
        mathematics_mark              DECIMAL(5,2),
        physical_science_mark         DECIMAL(5,2),
        life_sciences_mark            DECIMAL(5,2),
        english_home_language_mark    DECIMAL(5,2),
        life_orientation_mark         DECIMAL(5,2),
        information_technology_mark   DECIMAL(5,2),
        agricultural_science_mark     DECIMAL(5,2),
        total_mark                    DECIMAL(6,2),
        average_mark                  DECIMAL(5,2)
    );
END
GO

--Create silver table (grade 12)
IF NOT EXISTS (SELECT 1 FROM sys.tables t JOIN sys.schemas s ON t.schema_id = s.schema_id
               WHERE s.name = 'silver' AND t.name = 'prelim_science_students_marks_grade12')
BEGIN
    CREATE TABLE silver.prelim_science_students_marks_grade12 (
        student_id                    NVARCHAR(50),
        student_name                  NVARCHAR(200),
        grade                         NVARCHAR(10),
        mathematics_mark              DECIMAL(5,2),
        physical_science_mark         DECIMAL(5,2),
        life_sciences_mark            DECIMAL(5,2),
        english_home_language_mark    DECIMAL(5,2),
        life_orientation_mark         DECIMAL(5,2),
        information_technology_mark   DECIMAL(5,2),
        agricultural_science_mark     DECIMAL(5,2),
        total_mark                    DECIMAL(6,2),
        average_mark                  DECIMAL(5,2)
    );
END
GO
