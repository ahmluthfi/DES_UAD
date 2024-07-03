import 'package:des_uad/data/models/persebaran_berdasarkan.dart';

class PersebaranAkreditasi extends PersebaranBerdasarkan {
  final String akreditasi;
  PersebaranAkreditasi({
    required super.persentase,
    required super.total,
    required this.akreditasi,
  });

  factory PersebaranAkreditasi.fromJson(Map<String, dynamic> json) =>
      PersebaranAkreditasi(
          persentase: json['persentase'],
          total: json['total'],
          akreditasi: json['akreditasi']);

  Map<String, dynamic> toJson() => {
        'persentase': persentase,
        'total': total,
        'akreditasi': akreditasi,
      };
}
