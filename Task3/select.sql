SELECT * FROM students as s
INNER JOIN exam_results as er ON s.student_id = er.student_id
INNER JOIN class_catalogue as cc ON er.class_id = cc.class_id
where class_name = 'algebra' and grade >= 4;