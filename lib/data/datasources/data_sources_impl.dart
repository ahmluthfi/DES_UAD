import 'package:des_uad/core/failure.dart';
import 'package:des_uad/data/models/akademik_student_status_model.dart';
import 'package:des_uad/data/models/sdm_jumlah_dosen_model.dart';
import 'package:http/http.dart';

import '../../core/constant_finals.dart';
import '../models/student_body_model.dart';
import 'data_sources.dart';

class DataSourceImpl implements DataSource {
  //Homepage
  @override
  Future<StudentBody> getStudentBody() async {
    try {
      final Response response =
          await get(Uri.parse('$url${endpoint['akademik_student_body']}'));
      if (response.statusCode == 200) {
        print('Response Body: ${response.body}');
        return studentBodyFromJson(response.body);
      } else {
        print('Failed with status code: ${response.statusCode}');
        throw ServerException(message: 'Gagal Mengambil Data');
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<AkademikStudentStatus> getStudentStatus() async {
    try {
      final Response response =
          await get(Uri.parse('$url${endpoint['akademik_student_status']}'));
      if (response.statusCode == 200) {
        print('Response Body: ${response.body}');
        return akademikStudentStatusFromJson(response.body);
      } else {
        throw ServerException(
            message: 'Gagal Mengambil Data: ${response.statusCode}');
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  //Sumber Daya Manusia
  @override
  Future<SdmJumlahDosen> getJumlahDosen() async {
    try {
      final Response response =
          await get(Uri.parse('$url${endpoint['sdm_jumlah_dosen']}'));
      if (response.statusCode == 200) {
        print('Response Body: ${response.body}');
        return sdmJumlahDosenFromJson(response.body);
      } else {
        throw ServerException(
            message: 'Gagal Mengambil Data: ${response.statusCode}');
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
