import '../models/akademik/keberhasilan_studi/perbandingan_keberhasilan_studi.dart';
import '../models/akademik/keberhasilan_studi/studi_mahasiswa.dart';
import '../models/akademik/kelulusan/perbandingan_kelulusan.dart';
import '../models/akademik/kelulusan/tren_kelulusan.dart';
import '../models/akademik/mahasiswa_asing/persebaran_negara.dart';
import '../models/akademik/penerimaan_mahasiswa_baru/data_pmb.dart';
import '../models/akademik/penerimaan_mahasiswa_baru/persebaran_fakultas.dart';
import '../models/akademik/penerimaan_mahasiswa_baru/persebaran_provinsi.dart';
import '../models/akademik/perpustakaan/koleksi.dart';
import '../models/home/akademik_student_status_model.dart';
import '../models/home/student_body_model.dart';
import '../models/sdm/sdm_jumlah_dosen_model.dart';

abstract interface class DataSource {
  // Mahasiswa Asing
  Future<String> getJumlahMahasiswaAsing();
  Future<List<PersebaranNegara>> getPersebaranNegara();
  // PMB
  Future<DataPMB> getDataPMB();
  Future<List<PersebaranFakultas>> getPersebaranFakultasMahasiswaBaru();
  Future<List<PersebaranProvinsi>> getPersebaranProvinsiMahasiswaBaru();
  // Kelulusan
  Future<List<TrenKelulusan>> getTrenKelulusan();
  Future<List<PerbandinganKelulusan>> getPerbandinganKelulusan();
  // Keberhasilan Studi
  Future<StudiMahasiswa> getStudiMahasiswa();
  Future<List<PerbandinganKeberhasilanStudi>>
      getPerbandinganKeberhasilanStudi();
  // Perpustakaan
  Future<Koleksi> getKoleksi();
  Future<String> getEksemplar();
  //Home
  //student body
  Future<StudentBody> getStudentBody();
  Future<AkademikStudentStatus> getStudentStatus();

  //sdm
  //sdm jumlah dosen
  // Future<SdmJumlahDosen> getJumlahDosen();
}
