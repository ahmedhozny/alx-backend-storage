-- Create view need_meeting to display names of students
-- who need a meeting: score < 80 and last meeting
-- is more than 1 month ago or never happened.
CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE score < 80 AND
(last_meeting IS NULL
     OR last_meeting < SUBDATE(CURRENT_DATE(), INTERVAL 1 MONTH)
);
