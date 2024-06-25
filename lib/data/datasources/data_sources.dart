import 'package:des_uad/data/models/akademik/kelulusan/perbandingan_kelulusan.dart';
import 'package:des_uad/data/models/akademik/kelulusan/tren_kelulusan.dart';

import '../models/akademik/mahasiswa_asing/persebaran_negara.dart';
import '../models/akademik/penerimaan_mahasiswa_baru/data_pmb.dart';
import '../models/akademik/penerimaan_mahasiswa_baru/persebaran_fakultas.dart';
import '../models/akademik/penerimaan_mahasiswa_baru/persebaran_provinsi.dart';

abstract interface class DataSource {
  Future<String> getJumlahMahasiswaAsing();
  Future<List<PersebaranNegara>> getPersebaranNegara();
  Future<DataPMB> getDataPMB();
  Future<List<PersebaranFakultas>> getPersebaranFakultasMahasiswaBaru();
  Future<List<PersebaranProvinsi>> getPersebaranProvinsiMahasiswaBaru();
  Future<List<TrenKelulusan>> getTrenKelulusan();
  Future<List<PerbandinganKelulusan>> getPerbandinganKelulusan();
}
