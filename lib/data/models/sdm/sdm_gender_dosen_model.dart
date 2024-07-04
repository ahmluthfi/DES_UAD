// To parse this JSON data, do
//
//     final sdmGenderDosen = sdmGenderDosenFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SdmGenderDosen sdmGenderDosenFromJson(String str) => SdmGenderDosen.fromJson(json.decode(str));

String sdmGenderDosenToJson(SdmGenderDosen data) => json.encode(data.toJson());

class SdmGenderDosen {
    bool status;
    DataGenderDosen data;
    String code;
    String message;

    SdmGenderDosen({
        required this.status,
        required this.data,
        required this.code,
        required this.message,
    });

    factory SdmGenderDosen.fromJson(Map<String, dynamic> json) => SdmGenderDosen(
        status: json["status"],
        data: DataGenderDosen.fromJson(json["data"]),
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

class DataGenderDosen {
    String lakiLaki;
    String perempuan;

    DataGenderDosen({
        required this.lakiLaki,
        required this.perempuan,
    });

    factory DataGenderDosen.fromJson(Map<String, dynamic> json) => DataGenderDosen(
        lakiLaki: json["laki_laki"],
        perempuan: json["perempuan"],
    );

    Map<String, dynamic> toJson() => {
        "laki_laki": lakiLaki,
        "perempuan": perempuan,
    };
}
