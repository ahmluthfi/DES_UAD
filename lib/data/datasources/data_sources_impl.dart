import 'package:des_uad/core/failure.dart';
import 'package:http/http.dart';

import '../../core/constant_finals.dart';
import '../models/student_body.dart';
import 'data_sources.dart';

class DataSourceImpl implements DataSource {
  @override
  Future<StudentBody> getStudentBody() async {
    try {
      final Response response =
          await get(Uri.parse('$url${endpoint['akademik_student_body']}'));
      if (response.statusCode == 200) {
        print(response.body);
        return studentBodyFromJson(response.body);
      } else {
        throw ServerException(message: 'Gagal Mengambil Data');
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
