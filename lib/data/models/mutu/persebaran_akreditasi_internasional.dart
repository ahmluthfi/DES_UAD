import 'package:des_uad/data/models/persebaran_berdasarkan.dart';

class PersebaranAkreditasiInternasional extends PersebaranBerdasarkan {
  final String prodi;

  PersebaranAkreditasiInternasional({
    required super.persentase,
    required super.total,
    required this.prodi,
  });

  factory PersebaranAkreditasiInternasional.fromJson(
          Map<String, dynamic> json) =>
      PersebaranAkreditasiInternasional(
          persentase: json['persentase'],
          total: json['total'],
          prodi: json['prodi']);

  Map<String, dynamic> toJson() => {
        'persentase': persentase,
        'total': total,
        'prodi': prodi,
      };
}
