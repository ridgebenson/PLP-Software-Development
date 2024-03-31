class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print("Student Information:");
    print("Name: $name");
    print("Age: $age");
    print("Grade Level: $gradeLevel");
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print("Teacher Information:");
    print("Name: $name");
    print("Age: $age");
    print("Subject: $subject");
  }
}

class School {
  void demonstrate() {
    final student = Student("Ridge", 21, "10th");
    final teacher = Teacher("Mr. Allan", 35, "Dart");

    student.printStudentInfo();
    print("\n"); // Add a separator
    teacher.printTeacherInfo();
  }
}

void main() {
  final school = School();
  school.demonstrate();
}
