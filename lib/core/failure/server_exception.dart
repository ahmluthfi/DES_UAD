class ServerException implements Exception {
  final String message;

  ServerException({this.message = 'Gagal Mengambil Data'});
}
