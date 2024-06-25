import 'package:des_uad/data/models/persebaran_berdasarkan.dart';

class PersebaranNegara extends PersebaranBerdasarkan {
  

  final String negara;

  PersebaranNegara({
    required this.negara,
    required super.persentase,
    required super.total,
  });

  factory PersebaranNegara.fromJson(Map<String, dynamic> json) =>
      PersebaranNegara(
          negara: json['negara'],
          persentase: json['persentase'],
          total: json['total']);

  Map<String, dynamic> toJson() => {
        'negara': negara,
        'persentase': persentase,
        'total': total,
      };
}
