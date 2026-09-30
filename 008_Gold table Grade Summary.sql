--- Create table to aggregate silver table data to gold grade summary table (Grade 10)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'grade_summary' AND schema_id = SCHEMA_ID('gold'))
BEGIN
    CREATE TABLE gold.grade_summary (
        grade            VARCHAR(5)    NOT NULL,
        student_count    INT           NOT NULL,
        avg_of_averages  DECIMAL(5,2)  NOT NULL,
        pass_count       INT           NOT NULL,
        fail_count       INT           NOT NULL,
        pass_rate_pct    DECIMAL(5,2)  NOT NULL
    );
END
GO

--- Insert data from grade 10 silver table
INSERT INTO gold.grade_summary (grade, student_count, avg_of_averages, pass_count, fail_count, pass_rate_pct)
SELECT
    grade,
    COUNT(*)                                                        AS student_count,
    AVG(average_mark)                                               AS avg_of_averages,
    SUM(CASE WHEN subjects_failed = 0 THEN 1 ELSE 0 END)            AS pass_count,
    SUM(CASE WHEN subjects_failed > 0 THEN 1 ELSE 0 END)            AS fail_count,
    CAST(SUM(CASE WHEN subjects_failed = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS pass_rate_pct
FROM silver.prelim_science_students_marks_grade10
GROUP BY grade;


--- Insert data from grade 11 silver table
INSERT INTO gold.grade_summary (grade, student_count, avg_of_averages, pass_count, fail_count, pass_rate_pct)
SELECT
    grade,
    COUNT(*)                                                        AS student_count,
    AVG(average_mark)                                               AS avg_of_averages,
    SUM(CASE WHEN subjects_failed = 0 THEN 1 ELSE 0 END)            AS pass_count,
    SUM(CASE WHEN subjects_failed > 0 THEN 1 ELSE 0 END)            AS fail_count,
    CAST(SUM(CASE WHEN subjects_failed = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS pass_rate_pct
FROM silver.prelim_science_students_marks_grade11
GROUP BY grade;

--- Insert data from grade 12 silver table
INSERT INTO gold.grade_summary (grade, student_count, avg_of_averages, pass_count, fail_count, pass_rate_pct)
SELECT
    grade,
    COUNT(*)                                                        AS student_count,
    AVG(average_mark)                                               AS avg_of_averages,
    SUM(CASE WHEN subjects_failed = 0 THEN 1 ELSE 0 END)            AS pass_count,
    SUM(CASE WHEN subjects_failed > 0 THEN 1 ELSE 0 END)            AS fail_count,
    CAST(SUM(CASE WHEN subjects_failed = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS pass_rate_pct
FROM silver.prelim_science_students_marks_grade12
GROUP BY grade;

