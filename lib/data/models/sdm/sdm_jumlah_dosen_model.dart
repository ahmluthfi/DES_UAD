// To parse this JSON data, do
//
//     final sdmJumlahDosen = sdmJumlahDosenFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SdmJumlahDosen sdmJumlahDosenFromJson(String str) => SdmJumlahDosen.fromJson(json.decode(str));

String sdmJumlahDosenToJson(SdmJumlahDosen data) => json.encode(data.toJson());

class SdmJumlahDosen {
    bool status;
    DataJumlahDosen data;
    String code;
    String message;

    SdmJumlahDosen({
        required this.status,
        required this.data,
        required this.code,
        required this.message,
    });

    factory SdmJumlahDosen.fromJson(Map<String, dynamic> json) => SdmJumlahDosen(
        status: json["status"],
        data: DataJumlahDosen.fromJson(json["data"]),
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

class DataJumlahDosen {
    String totalDosen;
    String rasioDosen;

    DataJumlahDosen({
        required this.totalDosen,
        required this.rasioDosen,
    });

    factory DataJumlahDosen.fromJson(Map<String, dynamic> json) => DataJumlahDosen(
        totalDosen: json["total_dosen"],
        rasioDosen: json["rasio_dosen"],
    );

    Map<String, dynamic> toJson() => {
        "total_dosen": totalDosen,
        "rasio_dosen": rasioDosen,
    };
}
