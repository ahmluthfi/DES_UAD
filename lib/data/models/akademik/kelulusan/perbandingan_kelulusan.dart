class PerbandinganKelulusan {
  int get totalMahasiswa =>
      int.tryParse(totalMhs.splitMapJoin('.', onMatch: (p0) => '')) ?? 0;
  int get mahasiswaLulus =>
      int.tryParse(mhsLulus.splitMapJoin('.', onMatch: (p0) => '')) ?? 0;
  final String tahun;
  final String totalMhs;
  final String mhsLulus;

  PerbandinganKelulusan({
    required this.tahun,
    required this.totalMhs,
    required this.mhsLulus,
  });

  factory PerbandinganKelulusan.fromJson(Map<String, dynamic> json) =>
      PerbandinganKelulusan(
        tahun: json["tahun"],
        totalMhs: json["total_mhs"],
        mhsLulus: json["mhs_lulus"],
      );

  Map<String, dynamic> toJson() => {
        "tahun": tahun,
        "total_mhs": totalMhs,
        "mhs_lulus": mhsLulus,
      };
}
