import 'dart:io';

import 'student.dart';
import 'teacher.dart';
import 'course.dart';
main() {
  late List <Course> courses = [];
  Student student1 = Student(name: "lara", id: "1234", email: "lara@gmail");
  Student student2 = Student(name: "karim", id: "2345", email: "karim@gmail");
  Teacher teacher1 = Teacher(name: "Amr", id: "9870", email: "Amr@gmail");
  Teacher teacher2 = Teacher(name: "Walaa", id: "1234", email: "Walaa@gmail");
  Course course1 = Course(courseName: "Math101", courseId: "1234",credit: "2000", teacher: teacher1);
  Course course2 = Course(courseName: "English101",
      courseId: "2345",
      credit: "1500",
      teacher: teacher2);
course1.addStudent(student1);
 course2.addStudent(student2);



  print("1.Login as Student ");
  print("2.Login as Teacher");
  print("3.Add student");
  print("4.Add Teacher");
  
  String choice = stdin.readLineSync()!;
  switch (choice) {
    case "2":
      print("Enter your name:");
      late String name;
      name = stdin.readLineSync()!;
      print("Enter your id :");
      late String id;
      id = stdin.readLineSync()!;
      print("Enter your Email:");
      late String email;
      email = stdin.readLineSync()!;
      if (name == teacher1.name) {
        if (id == teacher1.id) {
          if (email == teacher1.email) {
            print("Welcome $name");
            print("1.show avaliable courses");
            print("2.Add course");
            print("3.Display Your Data");
            print("4.Exit");
            String choice3 = "0";
              choice3 = stdin.readLineSync()!;
              switch (choice3) {
                case "1":
                  course1.getCourseDetails();
                  course2.getCourseDetails();
                  break;
                case "2":
                  print("Enter course name :");
                  late String courseName;
                  courseName = stdin.readLineSync()!;
                  print("Enter course Id:");
                  late String courseId;
                  courseId = stdin.readLineSync()!;
                  print("Enter course credit:");
                  late String credit;
                  credit = stdin.readLineSync()!;
                  Course course4 = Course(courseName: courseName,
                      courseId: courseId,
                      credit: credit, teacher: teacher1);
                  course4.getCourseDetails();

                  break;
                case "3":
                  teacher1.getDetails();
                  break;
            }
          }

          else {
            print("there is no user with this data");
          }
        }
        else {
          print("there is no user with this data");
        }
      }
      else if (name == teacher2.name) {
        if (id == teacher2.id) {
          if (email == teacher2.email) {
            print("Welcome $name");
            print("1.show avaliable courses");
            print("2.Add course");
            print("3.Display your Data");
            print("4.Exit");
            String choice3 = "0";

              choice3 = stdin.readLineSync()!;
              switch (choice3) {
                case "1":
                  course1.getCourseDetails();
                  course2.getCourseDetails();
                  break;
                case "2":
                  print("Enter course name :");
                  late String courseName;
                  courseName = stdin.readLineSync()!;
                  print("Enter course Id:");
                  late String courseId;
                  courseId = stdin.readLineSync()!;
                  print("Enter course credit:");
                  late String credit;
                  credit = stdin.readLineSync()!;
                  Course course3 = Course(courseName: courseName,
                      courseId: courseId,
                      credit: credit,
                      teacher: teacher2);
                  course3.getCourseDetails();
                  break;
                case"3":
                  teacher2.getDetails();
                  break;
              }
          }
          else {
            print("there is no user with this data");
          }
        }
        else {
          print("there is no user with this data");
        }
      }
      break;
    case "1":
      print("Enter student name:");
      late String name;
      name = stdin.readLineSync()!;
      print("Enter your id :");
      late String id;
      id = stdin.readLineSync()!;
      print("Enter your Email:");
      late String email;
      email = stdin.readLineSync()!;
      if (name == student1.name) {
        if (id == student1.id) {
          if (email == student1.email) {
            print("Availble Courses : ");
            course1.getCourseDetails();
            course2.getCourseDetails();
            print("1.Enroll to ${course1.courseName}");
            print("2.Enroll to ${course2.courseName}");
            print("3.Exit");
            late String choice2;
            choice2 = stdin.readLineSync()!;
            switch (choice2) {
              case "1":
                student1.enrollInCourse(course1);
                break;
              case "2":
                student1.enrollInCourse(course1);
                break;
            }
            student1.getDetails();
        }
        else {
          print("there is no user with this data");
        }
      }
      else {
        print("there is no user with this data");
      }}


  else if(name == student2.name ) {
  if ( id == student2.id ){
  if(email ==student2.email){
  print ("Welcome $name");
  print ("Availble Courses : ");
  course1.getCourseDetails();
  course2.getCourseDetails();

  print("1.Enroll to ${course1.courseName}");
  print("2.Enroll to ${course2.courseName}");
  late String choice2;
  choice2 =stdin.readLineSync()!;
  switch(choice2){
  case "1":
  course1.addStudent(student2);
  break;
  case "2":
  course2.addStudent(student2);
  break;

  }
  student2.getDetails();
  }

  else{
  print ("there is no user with this data");
  }
  }
  else{
  print ("there is no user with this data");

  }
  }
      break;

    case "3":
      print("Enter your name :");
     late String name;
     name =stdin.readLineSync()!;
      print("Enter your id :");
      late String id;
    id =stdin.readLineSync()!;
      print("Enter your Email:");
      late String email;
     email =stdin.readLineSync()!;

      Student student3= Student(name: name, id: id, email: email);
      print ("Availble Courses : ");
      course1.getCourseDetails();
      course2.getCourseDetails();
      print("1.Enroll to ${course1.courseName}");
      print("2.Enroll to ${course2.courseName}");
      print("3.Exit");
      String choice2 ="0";
        choice2=stdin.readLineSync()!;
        switch(choice2){
          case "1":
            student3.enrollInCourse(course1);
            break;
          case "2":
           student3.enrollInCourse(course2);
            break;
      }
      student3.getDetails();
      break;
    case "4":
      print("Enter your name :");
      late String name;
      name =stdin.readLineSync()!;
      print("Enter your id :");
      late String id;
      id =stdin.readLineSync()!;
      print("Enter your Email:");
      late String email;
      email =stdin.readLineSync()!;
      Teacher teacher3= Teacher(name: name, id: id, email: email);
      print("Welcome $name");
      print("1.show avaliable courses");
      print("2.Add course");
      print("3.Display your Data");
      print("4.Exit");
      String choice3 = "0";
      while (choice3 != "4") {
        choice3 = stdin.readLineSync()!;
        switch (choice3) {
          case "1":
            course1.getCourseDetails();
            course2.getCourseDetails();
            break;
          case "2":
            print("Enter course name :");
            late String courseName;
            courseName = stdin.readLineSync()!;
            print("Enter course Id:");
            late String courseId;
            courseId = stdin.readLineSync()!;
            print("Enter course credit:");
            late String credit;
            credit = stdin.readLineSync()!;
            Course course5 = Course(courseName: courseName,
                courseId: courseId,
                credit: credit,
                teacher: teacher3);
            course5.getCourseDetails();
            break;
          case"3":
            teacher3.getDetails();
            break;
        }
      }


  }

 }