<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $DB_PASS = trim(file_get_contents(__DIR__."/../../../i308s26_team8-password.txt"));
    $con = mysqli_connect("db.luddy.indiana.edu", "i308s26_team8", $DB_PASS, "i308s26_team8");

    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Student fields
    $sname  = $_POST['sname'];
    $semail = $_POST['semail'];
    $sphone = $_POST['sphone'];
    $school = $_POST['school'];

    // Course fields
    $course_number = $_POST['course-number'];
    $instructor    = $_POST['instructor-name'];
    $description   = $_POST['description'];

    // Insert into Student table
    $sql_student = "INSERT INTO Student (Name, Email, Phone, School)
                    VALUES ('$sname', '$semail', '$sphone', '$school')";

    if (!mysqli_query($con, $sql_student)) {
        die('Student SQL Error: ' . mysqli_error($con));
    }

    // grab auto generated StudentID after data is inserted 
    // https://www.w3schools.com/php/func_mysqli_insert_id.asp
    $new_student_id = mysqli_insert_id($con);

    // Insert into Course table
    $sql_course = "INSERT INTO Course (Course_num, Professor, Description)
                   VALUES ('$course_number', '$instructor', '$description')";

    if (!mysqli_query($con, $sql_course)) {
        die('Course SQL Error: ' . mysqli_error($con));
    }
    
    $new_course_id = mysqli_insert_id($con);
    // Insert into StudentTutorRequest table
    $sql_request = "INSERT INTO StudentTutorRequest (PreferredTime, RequestedTopic, StudentID)
                    VALUES ('', '$course_number', '$new_student_id')";

    if (!mysqli_query($con, $sql_request)) {
        die('Request SQL Error: ' . mysqli_error($con));
    }

    // Insert into WaitlistEntry table

    $sql_wait_list = "INSERT INTO WaitlistEntry (RequestDate, Status, StudentID, CourseID)
                        VALUES (CURDATE(), 'pending', $new_student_id, $new_course_id)";

    if (!mysqli_query($con, $sql_wait_list)) { 
        die('WaitlistEntry SQL Error: ' . mysqli_error($con));
    }

    mysqli_close($con);
    header("Location: report.php?submitted=1");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Contact Form</title>
    <link rel="stylesheet" href="css/modern-normalize.css">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Hind+Guntur:wght@300;400;500;600;700&family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend+Deca:wght@100..900&family=Racing+Sans+One&display=swap"
        rel="stylesheet">
</head>

<body>
    <header>
        <h1>TutorNow</h1>
        <div class="links">
            <a href="./index.html">Home</a>
            <a href="./report.php">Report</a>
            <a href="./search.php">Tutor Form</a>
        </div>
    </header>

    <h2><em>Student Contact Form</em></h2>

    <div class="images-index">
        <img src="./images/student-form.jpg" alt="">
    </div>

    <p>Need help with a course? Submit a tutoring request and we’ll connect you with someone who can help. Provide your course details, describe the topics you’re struggling with, and share your availability and preferences. Whether you’re preparing for an exam or trying to better understand the material, TutorNow makes it easy to find the support you need.</p>

    <!-- https://www.w3schools.com/html/html_forms.asp -->

    <h2 class="form-h2">Request a Tutor</h2>
    <div class="form-container">
        <form action="add_data.php" method="post">
            <div class="form-sections">
                <h3><em>Contact Info</em></h3>

                <label for="name">*Name:</label>
                <input minlength="3" maxlength="100" required type="text" id="sname" name="sname" placeholder="Full Name">

                <label for="email">*Email:</label>
                <input minlength="5" maxlength="100" required type="email" id="semail" name="semail">

                <label for="phone">*Phone:</label>
                <input minlength="10" maxlength="20" required type="phone" id="sphone" name="sphone" placeholder="(xxx) xxx-xxx">

                <label for="Scool">*School Affiliation:</label>
                <input minlength="3" maxlength="100" required type="school" id="school" name="school" placeholder="School Name">
            </div>
            <div class="form-sections">
                <h3><em>Course Information</em></h3>

                <label for="course-name">*Course Name</label>
                <input required type="course-name" id="course-name" name="course-name" placeholder="e.g. Calculus 1">

                <label for="course-number">*Course Number</label>
                <input required type="course-number" id="course-number" name="course-number" placeholder="MATH-M211">

                <label for="instructor-name">Instructor Name</label>
                <input required type="instructor-name" id="instructor-name" name="instructor-name">

                <label for="description">*Description</label>
                <input required type="description" id="description" name="description" placeholder="e.g., 'Midterm next week.'">
            </div>
            <div class="form-sections">
                <h3><em>Payment</em></h3>

                <label for="payment">*Are you looking for free help or are you willing to pay?</label>
                <select name="payment" id="payment">
                    <option value="free">Free</option>
                    <option value="willing-to-pay">Wiling to Pay</option>
                </select>
                <label for="range">Budget</label>
                <input type="text" id="range" name="range" placeholder="e.g. $20-30/hr">
            </div>
            <br>    
            <div class="button-container">
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>

    <footer>
        <p><strong class="white-text">Project Members:</strong> Nathan Myers, Karan Goyal, Daniel Ayorinde, Andrew Phoy.
        </p>
        <p><strong class="white-text">Description:</strong> Your client is an academic support organization that
            connects students seeking tutoring help with peers, volunteers, or paid tutors who can assist them in the
            courses they are currently studying.</p>
    </footer>
</body>
</html>