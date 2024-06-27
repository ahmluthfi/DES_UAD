import '../../perbandingan_berdasarkan.dart';

class PerbandinganKelulusan extends PerbandinganBerdasarkan {
  int get mahasiswaLulus =>
      int.tryParse(mhsLulus.splitMapJoin('.', onMatch: (p0) => '')) ?? 0;

  final String mhsLulus;

  PerbandinganKelulusan({
    required super.tahun,
    required super.totalMhs,
    required this.mhsLulus,
  });

  factory PerbandinganKelulusan.fromJson(Map<String, dynamic> json) =>
      PerbandinganKelulusan(
        tahun: json['tahun'],
        totalMhs: json['total_mhs'],
        mhsLulus: json['mhs_lulus'],
      );

  Map<String, dynamic> toJson() => {
        'tahun': tahun,
        'total_mhs': totalMhs,
        'mhs_lulus': mhsLulus,
      };
}
