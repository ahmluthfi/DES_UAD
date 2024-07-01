class TrenKelulusan {
  double get percent =>
      double.tryParse(
          persentase.split('%')[0].splitMapJoin(',', onMatch: (p0) => '.')) ??
      0;

  final String tahun;
  final String persentase;
  final String total;
  TrenKelulusan({
    required this.tahun,
    required this.persentase,
    required this.total,
  });

  factory TrenKelulusan.fromJson(Map<String, dynamic> json) => TrenKelulusan(
      tahun: json["tahun"],
      persentase: json["persentase"],
      total: json["total"]);

  Map<String, dynamic> toJson() => {
        "tahun": tahun,
        "persentase": persentase,
        "total": total,
      };
}
