import 'dart:convert';

import 'package:des_uad/core/constant_finals.dart';
import 'package:des_uad/core/failure/server_exception.dart';
import 'package:des_uad/data/datasources/data_sources.dart';
import 'package:des_uad/data/models/akademik/kelulusan/perbandingan_kelulusan.dart';
import 'package:des_uad/data/models/akademik/kelulusan/tren_kelulusan.dart';
import 'package:des_uad/data/models/akademik/mahasiswa_asing/persebaran_negara.dart';
import 'package:des_uad/data/models/akademik/penerimaan_mahasiswa_baru/data_pmb.dart';
import 'package:des_uad/data/models/akademik/penerimaan_mahasiswa_baru/persebaran_fakultas.dart';
import 'package:des_uad/data/models/akademik/penerimaan_mahasiswa_baru/persebaran_provinsi.dart';
import 'package:http/http.dart';

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
}
