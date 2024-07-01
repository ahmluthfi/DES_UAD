import 'dart:convert';

import 'package:http/http.dart';

import '../../core/constant_finals.dart';
import '../../core/failure/server_exception.dart';
import '../models/akademik/keberhasilan_studi/perbandingan_keberhasilan_studi.dart';
import '../models/akademik/keberhasilan_studi/studi_mahasiswa.dart';
import '../models/akademik/kelulusan/perbandingan_kelulusan.dart';
import '../models/akademik/kelulusan/tren_kelulusan.dart';
import '../models/akademik/mahasiswa_asing/persebaran_negara.dart';
import '../models/akademik/penerimaan_mahasiswa_baru/data_pmb.dart';
import '../models/akademik/penerimaan_mahasiswa_baru/persebaran_fakultas.dart';
import '../models/akademik/penerimaan_mahasiswa_baru/persebaran_provinsi.dart';
import '../models/akademik/perpustakaan/koleksi.dart';
import '../models/akademik_student_status_model.dart';
import '../models/student_body_model.dart';
import 'data_sources.dart';

class DataSourceImpl implements DataSource {
  @override
  Future<String> getJumlahMahasiswaAsing() async {
    try {
      final response =
          await get(Uri.parse('$url${endpoint['mahasiswa_asing']['jumlah']}'));
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return decoded['data']['total_mhs'];
      }

      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<PersebaranNegara>> getPersebaranNegara() async {
    try {
      final response = await get(
          Uri.parse('$url${endpoint['mahasiswa_asing']['persebaran_negara']}'));
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return (decoded['data'] as List)
            .map((e) => PersebaranNegara.fromJson(e))
            .toList();
      }
      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<DataPMB> getDataPMB() async {
    try {
      final response =
          await get(Uri.parse('$url${endpoint['pmb']['dataPMB']}'));
      final decoded = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return DataPMB.fromJson(decoded['data']);
      }
      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<PersebaranFakultas>> getPersebaranFakultasMahasiswaBaru() async {
    try {
      final response =
          await get(Uri.parse('$url${endpoint['pmb']['persebaran_fakultas']}'));
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return (decoded['data'] as List)
            .map((e) => PersebaranFakultas.fromJson(e))
            .toList();
      }
      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<PersebaranProvinsi>> getPersebaranProvinsiMahasiswaBaru() async {
    try {
      final response =
          await get(Uri.parse('$url${endpoint['pmb']['persebaran_provinsi']}'));
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return (decoded['data'] as List)
            .map((e) => PersebaranProvinsi.fromJson(e))
            .toList();
      }
      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<TrenKelulusan>> getTrenKelulusan() async {
    try {
      final response =
          await get(Uri.parse('$url${endpoint['kelulusan']['tren']}'));
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return (decoded['data'] as List)
            .map((e) => TrenKelulusan.fromJson(e))
            .toList();
      }
      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<PerbandinganKelulusan>> getPerbandinganKelulusan() async {
    try {
      final response =
          await get(Uri.parse('$url${endpoint['kelulusan']['perbandingan']}'));
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return (decoded['data'] as List)
            .map((e) => PerbandinganKelulusan.fromJson(e))
            .toList();
      }
      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<StudiMahasiswa> getStudiMahasiswa() async {
    try {
      final response =
          await get(Uri.parse('$url${endpoint['keberhasilan']['mhs']}'));
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return StudiMahasiswa.fromJson(decoded['data']);
      }

      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<PerbandinganKeberhasilanStudi>>
      getPerbandinganKeberhasilanStudi() async {
    try {
      final response = await get(
          Uri.parse('$url${endpoint['keberhasilan']['perbandingan']}'));
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return (decoded['data'] as List)
            .map((e) => PerbandinganKeberhasilanStudi.fromJson(e))
            .toList();
      }

      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Koleksi> getKoleksi() async {
    try {
      final response =
          await get(Uri.parse('$url${endpoint['perpustakaan']['koleksi']}'));
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return Koleksi.fromJson(decoded['data']);
      }

      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<String> getEksemplar() async {
    try {
      final response =
          await get(Uri.parse('$url${endpoint['perpustakaan']['eksemplar']}'));
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return decoded['data']['total_eksemplar'];
      }

      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }

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
}
