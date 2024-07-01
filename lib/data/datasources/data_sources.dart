

import '../models/akademik_student_status_model.dart';
import '../models/sdm_jumlah_dosen_model.dart';
import '../models/student_body_model.dart';

abstract interface class DataSource {
  //homepage
  Future<StudentBody> getStudentBody();
  Future<AkademikStudentStatus> getStudentStatus();
  

  //SDM
  Future<SdmJumlahDosen> getJumlahDosen();
}
