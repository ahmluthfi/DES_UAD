import 'package:des_uad/data/models/student_body_model.dart';

import '../models/akademik_student_status_model.dart';

abstract interface class DataSource {
  Future<StudentBody> getStudentBody();
  Future<AkademikStudentStatus> getStudentStatus();
  // Future<Keaktifkan> getKeaktifan();
}
