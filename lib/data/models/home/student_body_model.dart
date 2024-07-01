// To parse this JSON data, do
//
//     final studentBody = studentBodyFromJson(jsonString);

import 'dart:convert';

StudentBody studentBodyFromJson(String str) => StudentBody.fromJson(json.decode(str));

String studentBodyToJson(StudentBody data) => json.encode(data.toJson());

class StudentBody {
    bool status;
    DataStudent data;
    String code;
    String message;

    StudentBody({
        required this.status,
        required this.data,
        required this.code,
        required this.message,
    });

    factory StudentBody.fromJson(Map<String, dynamic> json) => StudentBody(
        status: json["status"],
        data: DataStudent.fromJson(json["data"]),
        code: json["code"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
        "code": code,
        "message": message,
    };
}

class DataStudent {
    String tahun;
    String studentBody;

    DataStudent({
        required this.tahun,
        required this.studentBody,
    });

    factory DataStudent.fromJson(Map<String, dynamic> json) => DataStudent(
        tahun: json["tahun"],
        studentBody: json["student_body"],
    );

    Map<String, dynamic> toJson() => {
        "tahun": tahun,
        "student_body": studentBody,
    };
}
