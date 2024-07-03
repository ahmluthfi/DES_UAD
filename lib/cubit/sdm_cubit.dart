import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/datasources/data_sources.dart';
import '../data/models/sdm/sdm_jumlah_dosen_model.dart';

part 'sdm_state.dart';

class SdmCubit extends Cubit<SdmState> {
  SdmCubit(this.dataSource) : super(SdmInitial());

  final DataSource dataSource;

  Future<void> getJumlahDosen() async {
    emit(SdmJumlahDosenLoading());

    final SdmJumlahDosen data = await dataSource.getJumlahDosen();
    emit(SdmJumlahDosenLoaded(data.data));
  }
}
