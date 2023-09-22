//Question 2
class Student {
  String sid;
  String name;

  Student(this.sid, this.name);

  @override
  String toString() {
    return 'Student{sid: $sid, name: $name}';
  }

}
  
main(){
  //Question 1
  List<double> grades = [85.5, 92.0, 78.5, 95.5, 88.0, 100.0];
  List<double> newGrades = grades.map((grade) => grade*.3 + 2.0).toList();
  print(newGrades);
  //Question 3
  List<int> numbers = [1, 2, 3, 4, 5];
  List<String> students = numbers.map((number) => "Student #$number").toList();
  List<String> sids = numbers.map((number) => (100000000 + number).toString()).toList();


  //Question 4
  for (int i = 0; i < students.length; i++) {
    print("Student: ${students[i]}");
    print("SID: ${sids[i]}");
  }
}