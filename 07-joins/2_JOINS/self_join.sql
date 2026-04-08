SELECT A.professor_name AS Professor1,
       B.professor_name AS Professor2
FROM professor A, professor B
WHERE A.dpet_id = B.dpet_id;
