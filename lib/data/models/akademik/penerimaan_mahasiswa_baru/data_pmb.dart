class DataPMB {
  final String tahun;
  final String totalRegistrasi;
  final String totalPendaftar;
  final String diterima;
  final String registrasi;
  final String pendaftarReguler;
  final String pendaftarNonReguler;

  DataPMB({
    required this.tahun,
    required this.totalRegistrasi,
    required this.totalPendaftar,
    required this.diterima,
    required this.registrasi,
    required this.pendaftarReguler,
    required this.pendaftarNonReguler,
  });

  factory DataPMB.fromJson(Map<String, dynamic> json) => DataPMB(
      tahun: json["tahun"],
      totalRegistrasi: json["total_regist"],
      totalPendaftar: json["total_pendaftar"],
      diterima: json["diterima"],
      registrasi: json["registrasi"],
      pendaftarReguler: json["pend_reguler"],
      pendaftarNonReguler: json["pend_nonreguler"]);

  Map<String, dynamic> toJson() => {
        "tahun": tahun,
        "total_regist": totalRegistrasi,
        "total_pendaftar": totalPendaftar,
        "diterima": diterima,
        "registrasi": registrasi,
        "pend_reguler": pendaftarReguler,
        "pend_nonreguler": pendaftarNonReguler,
      };
}
