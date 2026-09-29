--- identify number of subjects failed per student (grade 10)
UPDATE [silver].[prelim_science_students_marks_grade10]
SET subjects_failed = 
      CASE WHEN mathematics_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN physical_science_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN life_sciences_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN english_home_language_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN life_orientation_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN information_technology_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN agricultural_science_mark < 40 THEN 1 ELSE 0 END;

   --- identify number of subjects failed per student (grade 11)
UPDATE [silver].[prelim_science_students_marks_grade11]
SET subjects_failed = 
      CASE WHEN mathematics_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN physical_science_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN life_sciences_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN english_home_language_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN life_orientation_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN information_technology_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN agricultural_science_mark < 40 THEN 1 ELSE 0 END;

    --- identify number of subjects failed per student (grade 12)
UPDATE [silver].[prelim_science_students_marks_grade12]
SET subjects_failed = 
      CASE WHEN mathematics_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN physical_science_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN life_sciences_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN english_home_language_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN life_orientation_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN information_technology_mark < 40 THEN 1 ELSE 0 END
    + CASE WHEN agricultural_science_mark < 40 THEN 1 ELSE 0 END;