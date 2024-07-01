class PersebaranBerdasarkan {
  int get getPercent => int.tryParse(persentase.split('%')[0]) ?? 0;

  final String persentase;
  final String total;

  PersebaranBerdasarkan({
    required this.persentase,
    required this.total,
  });
}
