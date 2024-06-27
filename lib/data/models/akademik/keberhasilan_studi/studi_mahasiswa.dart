class StudiMahasiswa {
  double get getBerhasil => double.tryParse(_removePeriod(berhasil)) ?? 0.0;
  double get getDropOut => double.tryParse(_removePeriod(dropOut)) ?? 0.0;

  final String tahun;
  final String totalMhs;
  final String berhasil;
  final String dropOut;

  StudiMahasiswa({
    required this.tahun,
    required this.totalMhs,
    required this.berhasil,
    required this.dropOut,
  });

  String _removePeriod(String str) =>
      str.splitMapJoin('.', onMatch: (p0) => '');

  factory StudiMahasiswa.fromJson(Map<String, dynamic> json) => StudiMahasiswa(
      tahun: json['tahun'],
      totalMhs: json['total_mhs'],
      berhasil: json['berhasil'],
      dropOut: json['do']);

  Map<String, dynamic> toJson() => {
        'tahun': tahun,
        'total_mhs': totalMhs,
        'berhasil': berhasil,
        'do': dropOut,
      };
}
