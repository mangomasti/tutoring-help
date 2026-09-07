
# TutorNow

A full-stack tutoring marketplace web app that connects students with tutors by course. Students submit requests or join waitlists, tutors post course offerings, and the system matches them while tracking payment status and reviews. Built with PHP, MySQL, and HTML/CSS.

## About

TutorNow connects students with qualified tutors who can help them succeed in their courses. Students submit a request with their course and the topics they need help with, and are matched with a tutor who fits their needs — whether that's a fellow student, a volunteer, or an experienced paid instructor. Matches can be filtered by availability, preferred learning format, and subject expertise, with support for tracking match status, payment status, and post-session reviews.

## Features

- Student request submission (course, preferred time, topic)
- Tutor course offerings (rate, experience, certifications)
- Matching between student requests and tutor offerings
- Waitlist support when no tutor is immediately available
- Payment and match status tracking
- Post-session reviews and ratings

## Tech Stack

- **Frontend:** HTML, CSS
- **Backend:** PHP
- **Database:** MySQL

## Database

The schema is built around Students, Tutors, Courses, Offerings, Matches, Waitlist Entries, and Reviews. See:
- `ERD.png` — entity relationship diagram
- `database.sql` — full database schema
- `relational_model.md` — relational model breakdown
- `conversion.pdf` — ERD-to-relational conversion notes

## Getting Started

### Prerequisites
- A local server environment with PHP and MySQL (e.g. [XAMPP](https://www.apachefriends.org/) or [MAMP](https://www.mamp.info/))

### Setup
1. Clone the repo:
   ```bash
   git clone https://github.com/yourname/your-repo-name.git
   ```
2. Move the project folder into your server's web root (e.g. `htdocs` for XAMPP).
3. Create a MySQL database and import the schema:
   ```bash
   mysql -u root -p your_database_name < database.sql
   ```
4. Update the database connection settings in the PHP files (host, username, password, database name) to match your local setup.
5. Start Apache and MySQL, then open the project in your browser (e.g. `http://localhost/your-project-folder/index.html`).

## Project Structure

```
├── index.html              # Homepage
├── search.php               # Tutor request form
├── add_data.php              # Student request form
├── report.php                 # Match results / report page
├── main.css / modern-normalize.css
├── database.sql              # Database schema
├── ERD.png                    # Entity relationship diagram
├── relational_model.md
├── queries.md
└── conversion.pdf
```

## Team

Nathan Myers, Karan Goyal, Daniel Ayorinde, Andrew Phoy

## License

This project was developed for academic purposes.
