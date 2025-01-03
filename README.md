# Student Information System

A simple Flutter application to manage student information with a form to add new students, a list view to display added students, and a detail view to show details of individual student. 

## Features
- Add student information via a form.
- View a list of all added students with their names displayed.
- Tap on a student's name to view detailed information.
- A user friendly interface with a bottom navigation bar to switch between pages.

## Screens

### 1. Home Screen (Main and Page1)
- Contains a form to add student information.
- Form fields:
  - Name
  - Age
  - Section
  - Semester
- Upon submission, the data is added to the list and can be viewed on the "Students" screen and a message is displayed using  SnackBar. 
 
### 2. Student List Screen (Page2)
- Displays a list of all added students using ListTile widget.
- Each ListTile shows the student's name and is styled with a light background color and rounded corners.
- Tapping on a student's ListTile navigates to the detail screen.

### 3. Student Detail Screen (Page3)
- Displays detailed information about the selected student:
  - Name
  - Age
  - Section
  - Semester

### Navigation
- A BottomNavigationBar widget is used for seamless navigation between different screens.

## How to Run
1. Ensure you have Flutter installed. 
2. Clone this repository:

   - git clone (repository-url)

3. Navigate to the project directory:

   - cd project_name

4. Run the app:

   - flutter run (directory)

## Demo Video
Watch the demo video of the Student Information System application:

[Watch the demo video]
<!-- (assets/TestRecording-2.mp4) -->

<video width="600" controls> <source src="https://raw.githubusercontent.com/NolanShrestha/Flutter_Test/main/assets/TestRecording-2.mp4" type="video/mp4"> Your browser does not support the video tag. </video> 






