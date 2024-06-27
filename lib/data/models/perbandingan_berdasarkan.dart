class PerbandinganBerdasarkan {
  int get totalMahasiswa =>
      int.tryParse(totalMhs.splitMapJoin('.', onMatch: (p0) => '')) ?? 0;

  final String tahun;
  final String totalMhs;

  PerbandinganBerdasarkan({
    required this.tahun,
    required this.totalMhs,
  });
}
