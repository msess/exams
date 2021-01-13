# exams

The exams here have been graciously donated by MSE students (aka MSESS members). If you would like to quickly donate an exam you have, please send an email to services@msess.ca with your exam or give it to a member of the MSESS executive team. Alternatively, you can send a pull request with your added exams as described below.

This website is intended for educational purposes only. MSESS does not claim to own any of these documents, they are the property of their respectful owners. If you feel any of the material should be taken down, please contact services@msess.ca and it will be taken down immediately.

## How to add an exam

On your local computer conduct the following steps:

1. Create a new folder for each course named: "AAA ###" where AAA is the course topic such as: MSE, ENSC, ECON, 

NOTE: If the course is for grad students as well, you may name the course folder `MSE 480+780` where 480 is the undergrad course number and 780 is the graduate course number.

2. Create folders inside the course folder named Final, Midterm, Quiz, Homework, or Assignments, as needed.
3. Copy your PDF files into the appropriate subfolders created in step 2.
4. Rename all PDF files to the format: YYYY-SEASON-ORIGINAL_FILENAME.pdf where "SEASON" is Spring, Summer, or Fall. Keep the original Canvas filename if applicable.

NOTE: The folder structure and names (Capitalization, spacing, dashes, and keywords shown above) are crucial. Please match the format of existing files.

On github conduct the following steps:

5. Fork this repository (MSESS/exams)

In your fork (YOUR_NAME/exams) conduct the following steps:

6. Click the `Upload files` button
7. Drag and drop the course folder (named: MSE|ENSC|ECON ### from step 1) into the drop area
8. Write a commit message explaining what you uploaded or anything you want MSESS to know, and press `Commit changes` button
9. Send a pull request to the MSESS/exams repository
10. You may delete your fork of the exam bank once you are sure the pull request has been accepted.

## For admins only

Updating msess.ca to automatically rebuild is automated using travis. See:

https://github.com/msess/exams/blob/master/common/travis/checkFileName.sh

https://github.com/msess/exams/blob/master/.travis.yml

99.9% of the time you wont have to do anything once you click the green merge button on the pull request in the github webgui. msess.ca's exam bank will automatically show the new exam after some time has passed. However, if you do not see a commit on the msess/msess.github.io repository after merging a pull request (and you have waited), you may have to start manually updating the exam bank. Here are the instructions on how to manually update msess.ca's exam bank to the current commit.

### Manual Updating

Once the new exam has been added to the MSESS/exams repository (the pull request has been accepted), you must tell the msess/msess.github.io (our website's repository) to regenerate and load the new exam.

1. `git clone https://github.com/msess/msess.github.io.git`
2. `cd msess.github.io`
3. `git submodule update --init --recursive`
4. `git submodule update --recursive --remote`
5. `git add exams`
6. `git commit -m "updated exam bank"`
7. `git push origin master`

remember to use `git status` often and google your errors.
