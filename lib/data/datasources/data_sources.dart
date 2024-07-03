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
import '../models/mutu/persebaran_akreditasi.dart';
import '../models/mutu/persebaran_akreditasi_internasional.dart';
import '../models/mutu/sertifikasi_internasional.dart';
import '../models/sdm/sdm_jumlah_dosen_model.dart';

abstract interface class DataSource {
  // Akademik - Mahasiswa Asing
  Future<String> getJumlahMahasiswaAsing();
  Future<List<PersebaranNegara>> getPersebaranNegara();
  // Akademik - PMB
  Future<DataPMB> getDataPMB();
  Future<List<PersebaranFakultas>> getPersebaranFakultasMahasiswaBaru();
  Future<List<PersebaranProvinsi>> getPersebaranProvinsiMahasiswaBaru();
  // Akademik - Kelulusan
  Future<List<TrenKelulusan>> getTrenKelulusan();
  Future<List<PerbandinganKelulusan>> getPerbandinganKelulusan();
  // Akademik - Keberhasilan Studi
  Future<StudiMahasiswa> getStudiMahasiswa();
  Future<List<PerbandinganKeberhasilanStudi>>
      getPerbandinganKeberhasilanStudi();
  // Akademik - Perpustakaan
  Future<Koleksi> getKoleksi();
  Future<String> getEksemplar();
  // Home - Student Body
  Future<StudentBody> getStudentBody();
  Future<AkademikStudentStatus> getStudentStatus();
  // SDM - Jumlah Dosen
  Future<SdmJumlahDosen> getJumlahDosen();
  

  // Mutu - Akreditasi
  Future<String> getTotalProdi();
  Future<List<PersebaranAkreditasi>> getPersebaranAkreditasi();
  /// Future<List<T>> getAkreditasiInternasional() -> Not Yet Aired
  Future<List<SertifikasiInternasional>> getSertifikasiInternasional();
  Future<List<PersebaranAkreditasiInternasional>> getPersebaranAkreditasInternasional();
}
