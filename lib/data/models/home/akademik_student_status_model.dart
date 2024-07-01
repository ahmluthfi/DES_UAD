// To parse this JSON data, do
//
//     final akademikStudentStatus = akademikStudentStatusFromJson(jsonString);

import 'dart:convert';

AkademikStudentStatus akademikStudentStatusFromJson(String str) => AkademikStudentStatus.fromJson(json.decode(str));

String akademikStudentStatusToJson(AkademikStudentStatus data) => json.encode(data.toJson());

class AkademikStudentStatus {
    bool status;
    DataStudentStatus data;
    String code;
    String message;

    AkademikStudentStatus({
        required this.status,
        required this.data,
        required this.code,
        required this.message,
    });

    factory AkademikStudentStatus.fromJson(Map<String, dynamic> json) => AkademikStudentStatus(
        status: json["status"],
        data: DataStudentStatus.fromJson(json["data"]),
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

class DataStudentStatus {
    String aktif;
    String cuti;
    String nonAktif;

    DataStudentStatus({
        required this.aktif,
        required this.cuti,
        required this.nonAktif,
    });

    factory DataStudentStatus.fromJson(Map<String, dynamic> json) => DataStudentStatus(
        aktif: json["aktif"],
        cuti: json["cuti"],
        nonAktif: json["non_aktif"],
    );

    Map<String, dynamic> toJson() => {
        "aktif": aktif,
        "cuti": cuti,
        "non_aktif": nonAktif,
    };
}
