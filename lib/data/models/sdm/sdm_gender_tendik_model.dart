// To parse this JSON data, do
//
//     final sdmGenderTendik = sdmGenderTendikFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SdmGenderTendik sdmGenderTendikFromJson(String str) => SdmGenderTendik.fromJson(json.decode(str));

String sdmGenderTendikToJson(SdmGenderTendik data) => json.encode(data.toJson());

class SdmGenderTendik {
    bool status;
    DataGenderTendik data;
    String code;
    String message;

    SdmGenderTendik({
        required this.status,
        required this.data,
        required this.code,
        required this.message,
    });

    factory SdmGenderTendik.fromJson(Map<String, dynamic> json) => SdmGenderTendik(
        status: json["status"],
        data: DataGenderTendik.fromJson(json["data"]),
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

class DataGenderTendik {
    String lakiLaki;
    String perempuan;

    DataGenderTendik({
        required this.lakiLaki,
        required this.perempuan,
    });

    factory DataGenderTendik.fromJson(Map<String, dynamic> json) => DataGenderTendik(
        lakiLaki: json["laki_laki"],
        perempuan: json["perempuan"],
    );

    Map<String, dynamic> toJson() => {
        "laki_laki": lakiLaki,
        "perempuan": perempuan,
    };
}
