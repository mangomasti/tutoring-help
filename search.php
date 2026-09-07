<?php
// ini_set('display_errors', 1);
// error_reporting(E_ALL);
if ($_SERVER["REQUEST_METHOD"] === "POST") { 
    $DB_PASS = trim(file_get_contents(__DIR__."/../../../i308s26_team8-password.txt"));
    $con = mysqli_connect("db.luddy.indiana.edu", "i308s26_team8", $DB_PASS, "i308s26_team8");

    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Instructor Fields
    $tname = $_POST['tname'];
    $temail = $_POST['temail'];
    $tphone = $_POST['tphone'];
    $experience = $_POST['tschool'];

    // offering fields 
    $course_name = $_POST['course-name'];
    $course_number = $_POST['course-number'];
    $rate = $_POST['range'] ?? '0';

    //insert into Tutor table
    $sql_tutor = "INSERT INTO Tutor (Name, Email, Phone, Experience)
                    VALUES ('$tname', '$temail', '$tphone', '$experience')";
    
    if (!mysqli_query($con, $sql_tutor)) { 
        die('Tutor SQL Error: ' . mysqli_error($con));
    }

    //grab auto generated TutorID after data is inserted
    $new_tutor_id = mysqli_insert_id($con);

    //insert into Course table
    $sql_course = "INSERT INTO Course (Course_num, Professor, Description)
                    VALUES ('$course_number', '$tname', '$course_name')";

    if (!mysqli_query($con, $sql_course)) { 
        die('Course SQL Error: ' . mysqli_error($con));
    }

    // grab auto generated CourseID 
    $new_course_id = mysqli_insert_id($con); 

    //insert into Offering table
    $sql_offering = "INSERT INTO Offering (Rate, Experience, CourseID, TutorID)
                    VALUES ('$rate', '$experience', $new_course_id, $new_tutor_id)";

    if (!mysqli_query($con, $sql_offering)) {
        die('Offerings SQL Error: ' . mysqli_error($con));
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
    <title>Tutor Contact Form</title>
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
            <a href="./add_data.php">Student Form</a>
        </div>
    </header>

    <h2><em>Tutor Contact Form</em></h2>

    <div class="images-index">
        <img src="./images/tutor-form.jpg" alt="">
    </div>

    <p>Join TutorNow and connect with students who are actively seeking help in your areas of expertise. Share your academic background, the courses you’re comfortable teaching, and your availability. Whether you’re volunteering or offering paid sessions, our platform helps you find students who match your skills and schedule so you can make a meaningful impact.</p>

    <h2 class="form-h2">Start Tutoring</h2>
    <div class="form-container">
        <form action="search.php" method="post">
            <div class="form-sections">
                <h3><em>Contact Info</em></h3>

                <label for="name">*Name:</label>
                <input required minlength="3" maxlength="100" type="text" id="tname" name="tname" placeholder="Full Name">

                <label for="email">*Email:</label>
                <input required minlength="5" maxlength="100" type="email" id="temail" name="temail">

                <label for="phone">*Phone:</label>
                <input minlength="10" maxlength="20" required type="phone" id="tphone" name="tphone" placeholder="(xxx) xxx-xxx">

                <label for="Scool">*Academic Background:</label>
                <input required minlngth="10" maxlength="250" type="text" id="tschool" name="tschool" placeholder="Experience">
            </div>
            <div class="form-sections">
                <h3><em>Course Information</em></h3>

                <label for="course-name">*Course Name(s):</label>
                <input required type="course-name" id="course-name" name="course-name" placeholder="e.g. Calculus 1">

                <label for="course-number">*Course Number(s):</label>
                <input required type="course-number" id="course-number" name="course-number" placeholder="MATH-M211">

                <label for="instructor-name">*Preferred Topics:</label>
                <input required type="instructor-name" id="instructor-name" name="instructor-name" placeholder="Derivatives">

                <label for="description">*Preferred Tutoring Format:</label>
                <select name="" id="">
                    <option value="in-person">In Person</option>
                    <option value="online">Online (Zoom)</option>
                    <option value="group-sessions">Group Sessions</option>
                </select>
            </div>
            <div class="form-sections">
                <h3><em>Payment & Availability</em></h3>

                <label for="payment">*Do you offer free or paid tutoring?</label>
                <select name="payment" id="payment">
                    <option value="free">Free</option>
                    <option value="willing-to-pay">Paid</option>
                </select>
                <label for="range">Rate:</label>
                <input type="text" id="range" name="range" placeholder="e.g. $20-30/hr">
                
                <label for="availability">*Availability:</label>
                <textarea name="availability" id="availability" placeholder="e.g Monday-Friday 2-5"></textarea>
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