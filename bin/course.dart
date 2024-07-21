import 'student.dart';
import 'teacher.dart';
class Course {
  late String courseName;
  late String courseId;
  late String credit;
  late List<Student> students=[];
  late Teacher teacher;
  Course({
    required this.courseName,
    required this .courseId,
    required this.credit,
      required this.teacher,
});

  addStudent(Student student) {
    students.add(student);
  }
getCourseDetails(){
  print("name :$courseName, code:$courseId, credit: $credit, teacher: ${teacher.name}, students:${students}");
}

  @override
  String toString() {
    return 'Course{students: $students}';
  }
}