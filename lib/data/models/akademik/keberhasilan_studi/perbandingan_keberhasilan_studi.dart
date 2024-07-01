import '../../perbandingan_berdasarkan.dart';

class PerbandinganKeberhasilanStudi extends PerbandinganBerdasarkan {
  int get mahasiswaBerhasil =>
      int.tryParse(mhsBerhasil.splitMapJoin('.', onMatch: (p0) => '')) ?? 0;

  final String mhsBerhasil;

  PerbandinganKeberhasilanStudi({
    required super.tahun,
    required super.totalMhs,
    required this.mhsBerhasil,
  });

  factory PerbandinganKeberhasilanStudi.fromJson(Map<String, dynamic> json) =>
      PerbandinganKeberhasilanStudi(
          tahun: json['tahun'],
          totalMhs: json['total_mhs'],
          mhsBerhasil: json['mhs_berhasil']);

  Map<String, dynamic> toJson() => {
        'tahun': tahun,
        'total_mhs': totalMhs,
        'mhs_berhasil': mhsBerhasil,
      };
}
