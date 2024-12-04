class SchoolModel {
  final String schoolName;
  final String schoolAddress;
  final int numberStudents;
  final int numberTeachers;

  SchoolModel({required this.schoolName,
    required this.schoolAddress,
    required this.numberStudents,
    required this.numberTeachers});

  factory SchoolModel.fromJson(Map<String, dynamic> json){
    return SchoolModel(schoolName: json['schoolName'],
        schoolAddress: json['schoolAddress'],
        numberStudents: json['numberStudents'],
        numberTeachers: json['numberTeachers']);
  }
}
