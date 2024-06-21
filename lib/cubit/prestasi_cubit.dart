import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'prestasi_state.dart';

class PrestasiCubit extends Cubit<PrestasiState> {
  PrestasiCubit() : super(PrestasiInitial());

  bool isNasional = true;
  int index = 0;

  void clickCakupanPrestasiButton({final bool isActive = true}) {
    isNasional = isActive;
    emit(CakupanPrestasiButtonClicked());
  }
}
