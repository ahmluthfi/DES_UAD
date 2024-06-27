class Koleksi {
  final String total;
  final String totalBuku;
  final String totalJurnal;

  Koleksi({
    required this.total,
    required this.totalBuku,
    required this.totalJurnal,
  });

  factory Koleksi.fromJson(Map<String, dynamic> json) => Koleksi(
      total: json['total'],
      totalBuku: json['total_buku'],
      totalJurnal: json['total_jurnal']);

  Map<String, dynamic> toJson() => {
        'total': total,
        'total_buku': totalBuku,
        'total_jurnal': totalJurnal,
      };
}
