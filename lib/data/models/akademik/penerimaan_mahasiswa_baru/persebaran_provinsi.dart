import '../../persebaran_berdasarkan.dart';

class PersebaranProvinsi extends PersebaranBerdasarkan {
  final String provinsi;

  PersebaranProvinsi({
    required this.provinsi,
    required super.persentase,
    required super.total,
  });

  factory PersebaranProvinsi.fromJson(Map<String, dynamic> json) =>
      PersebaranProvinsi(
          provinsi: json["provinsi"],
          persentase: json["persentase"],
          total: json["total"]);

  Map<String, dynamic> toJson() => {
        "provinsi": provinsi,
        "persentase": persentase,
        "total": total,
      };
}
