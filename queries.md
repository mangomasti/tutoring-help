<<<<<<< HEAD
Template: 
    Name of Query:
    Location of query on website:
    SELECT (which fields)
    FROM (which table)
    JOINs/ONs (if necessary)
    along with any conditions needed (this step does not need to be in SQL syntax)
    Does query utilize a subquery? Y/N
    Does query utilize aggregation? Y/N

Query 1: all tutoring requests, including their status and student grouping
Location: Report page - All Tutoring Requests 

    SELECT s.Name, c.Course_num AS Course, m.MatchStatus AS Status, s.StudentID AS 'Group'
    FROM StudentTutorRequest AS str
    JOIN Student AS s ON str.StudentID = s.StudentID 
    JOIN WaitListEntry AS we ON s.StudentID = we.StudentID 
    JOIN Course AS c ON we.CourseID = c.CourseID 
    LEFT JOIN TutorMatch AS tm ON str.Request_num = tm.Request_num
    ORDER BY s.StudentID, c.Course_num;

Query 2: all unmatched tutoring requests
Location: Report page - underneath matched pairs

    SELECT s.Name AS Student, c.Course_num AS Course
    FROM StudentTutorRequest AS str
    JOIN Student AS s ON str.StudentID = s.StudentID 
    JOIN WaitlistEntry AS we ON s.StudentID = we.StudentID 
    JOIN Course AS c ON we.CourseID = c.CourseID 
    LEFT JOIN TutorMatch AS tm ON str.Request_num = tm.Request_num
    WHERE tm.MatchStatus IS NULL OR tm.MatchStatus = 'cancelled';

Query 3: all tutors who’ve signed up, including their matched status and course coverage
Location: Report page - under the Tutor Table
Note: text filler will be replaced with actual course numbers eventually or the tutors academic experience. 

    SELECT t.Name AS Tutor, tm.MatchStatus AS 'Matched Status', o.Experience AS 'Course Coverage'
    FROM Tutor AS t 
    JOIN Offering AS o ON t.TutorID = o.TutorID 
    LEFT JOIN TutorMatch AS tm ON o.OfferingID = tm.OfferingID 
    ORDER BY t.name;

Query 4: all tutors not currently matched
Location: 

SELECT
    t.tutor_id,
    t.name,
    t.email,
    t.phone
FROM tutors t
WHERE t.tutor_id NOT IN (
    SELECT tutor_id
    FROM matches
    WHERE status IN ('Matched', 'In Progress')
);

Query 5: matched pairs listing the student, course, and tutor, including payment status
Location:

SELECT
    s.name                  AS student_name,
    s.email                 AS student_email,
    tr.course_name,
    tr.course_number,
    t.name                  AS tutor_name,
    t.email                 AS tutor_email,
    tr.budget_range         AS student_budget,
    tc.fee                  AS tutor_fee,
    m.status                AS match_status,
    CASE
        WHEN tr.seeking_paid = TRUE AND tc.charges_fee = TRUE THEN 'Paid'
        ELSE 'Free'
    END                     AS payment_status
FROM matches m
JOIN tutoring_requests tr   ON m.request_id   = tr.request_id
JOIN students s             ON tr.student_id  = s.student_id
JOIN tutors t               ON m.tutor_id     = t.tutor_id
JOIN tutor_courses tc       ON m.tutor_id     = tc.tutor_id
                           AND tr.course_number = tc.course_number
WHERE m.status IN ('Matched', 'In Progress', 'Fulfilled');

