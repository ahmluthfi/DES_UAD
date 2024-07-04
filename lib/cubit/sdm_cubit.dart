import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/datasources/data_sources.dart';
import '../data/models/sdm/sdm_gender_dosen_model.dart';
import '../data/models/sdm/sdm_gender_tendik_model.dart';
import '../data/models/sdm/sdm_jumlah_dosen_model.dart';
import '../data/models/sdm/sdm_jumlah_tendik_model.dart';

part 'sdm_state.dart';

class SdmCubit extends Cubit<SdmState> {
  SdmCubit(this.dataSource) : super(SdmInitial());

  final DataSource dataSource;

  //dosen

  Future<void> getJumlahDosenTendik() async {
    emit(SdmJumlahDosenLoading());

    final SdmJumlahDosen dataDosen = await dataSource.getJumlahDosen();
    final SdmJumlahTendik dataTendik = await dataSource.getJumlahTendik();

    emit(SdmJumlahDosenTendikLoaded(dataDosen.data, dataTendik.data));
  }

  Future<void> getJumlahDosen() async {
    emit(SdmJumlahDosenLoading());

    final SdmJumlahDosen data = await dataSource.getJumlahDosen();
    emit(SdmJumlahDosenLoaded(data.data));
  }

  Future<void> getGenderDosen() async {
    emit(SdmGenderDosenLoading());

    final SdmGenderDosen data = await dataSource.getGenderDosen();
    emit(SdmGenderDosenLoaded(data.data));
  }

  //tendik
  Future<void> getJumlahTendik() async {
    emit(SdmJumlahTendikLoading());

    final SdmJumlahTendik data = await dataSource.getJumlahTendik();
    emit(SdmJumlahTendikLoaded(data.data));
  }

  Future<void> getGenderTendik() async {
    emit(SdmGenderTendikLoading());

    final SdmGenderTendik data = await dataSource.getGenderTendik();
    emit(SdmGenderTendikLoaded(data.data));
  }
}
