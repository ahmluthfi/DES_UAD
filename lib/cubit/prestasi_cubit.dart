import 'package:bloc/bloc.dart';
import '../data/datasources/data_sources.dart';
import 'package:meta/meta.dart';

part 'prestasi_state.dart';

class PrestasiCubit extends Cubit<PrestasiState> {
  PrestasiCubit({required this.dataSource}) : super(PrestasiInitial());

  final DataSource dataSource;

  bool isNasional = true;
  int index = 0;

  void clickCakupanPrestasiButton({final bool isActive = true}) {
    isNasional = isActive;
    emit(CakupanPrestasiButtonClicked());
  }
}
