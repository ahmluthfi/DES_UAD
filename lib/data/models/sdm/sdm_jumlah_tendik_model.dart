// To parse this JSON data, do
//
//     final sdmJumlahTendik = sdmJumlahTendikFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SdmJumlahTendik sdmJumlahTendikFromJson(String str) => SdmJumlahTendik.fromJson(json.decode(str));

String sdmJumlahTendikToJson(SdmJumlahTendik data) => json.encode(data.toJson());

class SdmJumlahTendik {
    bool status;
    DataJumlahTendik data;
    String code;
    String message;

    SdmJumlahTendik({
        required this.status,
        required this.data,
        required this.code,
        required this.message,
    });

    factory SdmJumlahTendik.fromJson(Map<String, dynamic> json) => SdmJumlahTendik(
        status: json["status"],
        data: DataJumlahTendik.fromJson(json["data"]),
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

class DataJumlahTendik {
    String totalTendik;
    String rasioTendik;

    DataJumlahTendik({
        required this.totalTendik,
        required this.rasioTendik,
    });

    factory DataJumlahTendik.fromJson(Map<String, dynamic> json) => DataJumlahTendik(
        totalTendik: json["total_tendik"],
        rasioTendik: json["rasio_tendik"],
    );

    Map<String, dynamic> toJson() => {
        "total_tendik": totalTendik,
        "rasio_tendik": rasioTendik,
    };
}
