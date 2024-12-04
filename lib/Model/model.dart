class SchoolModel {
  final String schoolName;
  final String schoolAddress;
  final int numberStudents;
  final int numberTeachers;

  SchoolModel({required this.schoolName,
    required this.schoolAddress,
    required this.numberStudents,
    required this.numberTeachers});

  factory SchoolModel.fromJson(Map<String, dynamic> json) {
    return SchoolModel(
      schoolName: json['School Name'],
      schoolAddress: json['School Address'],
      numberStudents: int.parse(json['Number of Students'].split(' ')[0]),
      numberTeachers: int.parse(json['Number of Teachers'].split(' ')[0]),
    );
  }

}
