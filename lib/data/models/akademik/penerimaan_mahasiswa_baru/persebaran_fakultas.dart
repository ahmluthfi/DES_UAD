import '../../persebaran_berdasarkan.dart';

class PersebaranFakultas extends PersebaranBerdasarkan{
  final String fakultas;

  PersebaranFakultas({
    required this.fakultas,
    required super.persentase,
    required super.total,
  });

  factory PersebaranFakultas.fromJson(Map<String, dynamic> json) =>
      PersebaranFakultas(
          fakultas: json["fakultas"],
          persentase: json["persentase"],
          total: json["total"]);

  Map<String, dynamic> toJson() => {
        "fakultas": fakultas,
        "persentase": persentase,
        "total": total,
      };
}
