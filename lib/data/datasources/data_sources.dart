import 'package:des_uad/data/models/student_body.dart';

abstract interface class DataSource {
  Future<StudentBody> getStudentBody();
  // Future<Keaktifkan> getKeaktifan();
}
