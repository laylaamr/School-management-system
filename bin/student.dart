import 'person.dart';
import 'course.dart';
class Student extends Person{
  late List <Course> courses=[];
  Student({
  required super.name,
  required super.id,
  required super.email,

});
  void enrollInCourse(Course course) {
    courses.add(course);
  }
  @override
  String toString() {
    return 'Student{courses: $courses}';
  }
  @override
  getDetails(){
super.getDetails();
print( "Courses: $courses");
  }


}