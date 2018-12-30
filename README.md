# exams

The exams here have been graciously donated by members of MSESS. If you would like to donate an exam you have, please send an email to services@msess.ca with your exam or give it to an member of the MSESS exec team.

This website is intended for educational purposes only. MSESS does not claim to own any of these documents, they are the property of their respectful owners. If you feel any of the material should be taken down, please contact services@msess.ca and it will be taken down immediately.

## How to add an exam

1. Fork this repository (MSESS/exams)

In your fork (YOUR_NAME/exams) conduct the following steps:

2. Create a folder for the course (named: MSE|ENSC|ECON ###) whose exams you wish to add (if it doesnt already exist)
3. Create a folder inside the course folder for whether it's a Final or Midterm (if it doesnt already exist)
4. Copy the final/midterm into the folder
5. Rename the file to: Summer|Fall|Spring-YEAR-ANYTHING_ELSE_YOU_WANT.pdf
6. Upload the exams
7. Send a pull request to the MSESS/exams repository

The folder structure and names (Caps, spacing, and info needed) are crucial. Please take a look at other exams that have already been uploaded to see how to capitalize and name files.


## For admins only

Once the new exam has been added to the MSESS/exams repository (the pull request has been accepted), you must tell the msess/msess.github.io (our website's repository) to regenerate and load the new exam.

1. Open the msess.github.io repository
2. `cd exams`
3. Download the latest commit: `git pull origin master`
4. go back to the root of the msess.github.io repository: `cd ..`
5. Tell git to use the latest commit in exams to build the website: `git add exams`
6. `git commit -m "Update exambank"`
7. `git push origin master`
