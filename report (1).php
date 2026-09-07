<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report</title>
    <link rel="stylesheet" href="css/modern-normalize.css">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hind+Guntur:wght@300;400;500;600;700&family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend+Deca:wght@100..900&family=Racing+Sans+One&display=swap" rel="stylesheet">
</head>
<body>
<?php
// open connection to database ()
$DB_PASS = trim(file_get_contents(__DIR__."/../../../i308s26_team8-password.txt"));
$con = mysqli_connect("db.luddy.indiana.edu", "i308s26_team8", $DB_PASS, "i308s26_team8");

//check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_GET['submitted']) && $_GET['submitted'] == 1) {
    echo "<p class='success-message'>Your information has been submitted!</p>";
}
?>
    <header>
        <h1>TutorNow</h1>
        <div class="links">
            <a href="./index.html">Home</a>
            <a href="./add_data.php">Student Form</a>
            <a href="./search.php">Tutor Form</a>
        </div>
    </header>

    <h2><em>Making the Perfect Match!</em></h2>

    <div class="images-index">
        <img src="./images/report-image.jpeg" alt="">
    </div>

    <p>TutorNow is designed to make academic support accessible, organized, and stress‑free. Students can submit detailed requests describing the courses and topics they need help with, while tutors share their expertise, availability, and preferred teaching formats. Our system brings these two groups together by identifying the best possible match based on course alignment, availability, and tutoring preferences.</p>
    

    <section>
        <h2>All Tutoring Requests</h2>
        <table>
            <thead>
                <tr>
                    <th>Student</th>
                    <th>Course</th>
                    <th>Status</th>
                    <th>Group</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $query = "
                    SELECT 
                        s.Name AS Student, c.Course_num AS Course,
                        COALESCE(tm.MatchStatus, 'Unmatched') AS Status,
                        s.StudentID AS 'Group'
                    FROM StudentTutorRequest AS str
                    JOIN Student AS s ON str.StudentID = s.StudentID
                    LEFT JOIN WaitlistEntry AS we ON s.StudentID = we.StudentID
                    LEFT JOIN Course AS c ON we.CourseID = c.CourseID
                    LEFT JOIN TutorMatch AS tm ON str.Request_num = tm.Request_num
                    ORDER BY s.StudentID, c.Course_num
                ";

                $result = mysqli_query($con, $query);
                if (!$result) {
                    echo "<tr><td colspan='4'>Query error: " . mysqli_error($con) . "</td></tr>";
                }

                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>
                        <td>" . $row['Student'] . "</td>
                        <td>" . $row['Course'] . "</td>
                        <td>" . $row['Status'] . "</td>
                        <td>" . $row['Group'] . "</td>
                    </tr>";
                }
                ?>
            </tbody>
        </table>
    </section>

    <p>The table below lists all active tutoring requests submitted by students. Each request includes the student’s name, the course they need help with, and the current status of their match. Requests may be unmatched, matched, in progress, or fulfilled. This report helps administrators quickly identify which students still need support and which matches are currently active.</p>

    <section>
        <h2>Tutors</h2>
        <table>
            <thead>
                <tr>
                    <th>Tutor</th>
                    <th>Status</th>
                    <th>Course Coverage</th>
                </tr>
            </thead>
            <tbody>
            <?php
            $query_tutors = "SELECT 
                                t.name AS Tutor,
                                COALESCE(tm.MatchStatus, 'Unmatched') AS MatchedStatus,
                                c.Course_num AS CourseCoverage
                            FROM Tutor AS t 
                            JOIN Offering AS o ON t.TutorID = o.TutorID
                            LEFT JOIN Course AS c ON o.CourseID = c.CourseID
                            LEFT JOIN TutorMatch AS tm ON o.OfferingID = tm.OfferingID
                            ORDER BY t.name";
            
            $result_tutors = mysqli_query($con, $query_tutors);

            while ($row = mysqli_fetch_assoc($result_tutors)) { 
                echo "<tr>
                        <td>" . $row['Tutor'] . "</td>
                        <td>" . $row['MatchedStatus'] . "</td>
                        <td>" . $row['CourseCoverage'] . "</td>
                     </tr>";
            }
            ?>
            </tbody>
        </table>
    </section>

    <p>Tutors play a crucial role in the success of TutorNow. This section highlights all tutors who have registered, along with their match status and the subjects they are qualified to teach. Administrators can use this information to monitor tutor availability, identify gaps in course coverage, and ensure students have access to the help they need.</p>

    <section>
        <h2>Matched Pairs</h2>
        <table>
            <thead>
                <tr>
                    <th>Student</th>
                    <th>Tutor</th>
                    <th>Course</th>
                    <th>Payment Status</th>
                </tr>
            </thead>
            <tbody>
            <?php
            $query_matches = "SELECT 
                                s.Name AS Student,
                                t.Name AS Tutor,
                                c.Course_num AS Course,
                                CASE WHEN tm.PaymentStatus = 1 THEN 'Paid' ELSE 'Unpaid' END AS PaymentStatus
                            FROM TutorMatch AS tm
                            JOIN StudentTutorRequest AS str ON tm.Request_num = str.Request_num
                            JOIN Student AS s ON str.StudentID = s.StudentID 
                            JOIN Offering AS o ON tm.OfferingID = o.OfferingID
                            JOIN Tutor AS t ON o.TutorID = t.TutorID
                            JOIN Course AS c ON o.CourseID = c.CourseID
                            WHERE tm.MatchStatus IN ('confirmed', 'completed')
                            ORDER BY s.Name";

            $results_matches = mysqli_query($con, $query_matches);

            while ($row = mysqli_fetch_assoc($results_matches)) {
                echo "<tr>
                        <td>" . $row['Student'] . "</td>
                        <td>" . $row['Tutor'] . "</td>
                        <td>" . $row['Course'] . "</td>
                        <td>" . $row['PaymentStatus'] . "</td>
                    </tr>";
            }
            ?>
            </tbody>
        </table>
    </section>

    <p>The matched pairs report provides a clear overview of successful tutor–student connections. Each entry includes the student, tutor, course, and payment status when applicable. Tracking these matches helps ensure that tutoring sessions begin smoothly and that both parties have the information they need to move forward.</p>
    <p>As TutorNow continues to grow, future enhancements may include tutor ratings, student feedback, and automated smart‑matching features. These improvements aim to strengthen match quality, highlight top‑performing tutors, and help students find reliable academic support more efficiently.</p>

    <footer>
        <p><strong class="white-text">Project Members:</strong> Nathan Myers, Karan Goyal, Daniel Ayorinde, Andrew Phoy.</p>
        <p><strong class="white-text">Description:</strong> Your client is an academic support organization that connects students seeking tutoring help with peers, volunteers, or paid tutors who can assist them in the courses they are currently studying.</p>
    </footer>
</body>
</html>