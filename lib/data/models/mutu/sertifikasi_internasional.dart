class SertifikasiInternasional {
  final String tahun;
  final String jenisRank;
  final String cakupan;
  final String rank;

  SertifikasiInternasional({
    required this.tahun,
    required this.jenisRank,
    required this.cakupan,
    required this.rank,
  });

  factory SertifikasiInternasional.fromJson(Map<String, dynamic> json) =>
      SertifikasiInternasional(
          tahun: json['tahun'],
          jenisRank: json['jenis_rank'],
          cakupan: json['cakupan'],
          rank: json['rank']);

  Map<String, dynamic> toJson() => {
        'tahun': tahun,
        'jenis_rank': jenisRank,
        'cakupan': cakupan,
        'rank': rank,
      };
}
