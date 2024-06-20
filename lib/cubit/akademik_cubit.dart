import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'akademik_state.dart';

enum JenisPMB { persebaran, reguler, nonReguler }

class AkademikCubit extends Cubit<AkademikState> {
  AkademikCubit() : super(AkademikInitial());

  List<int> indexJenisPMB = [0, 0, 0];
  List<bool> isChecked = [true, true, true, true];
  int indexMhsLokal = 0;
  int idnexMhsAsing = 0;

  void click(final JenisPMB jenisPMB, final int index) {
    indexJenisPMB[jenisPMB.index] = index;
    emit(AkademikInitial());
  }

  void check(final int index) {
    isChecked[index] = !isChecked[index];
    emit(AkademikInitial());
  }

  void clickActiveButtonMhsLokal(final int index) {
    indexMhsLokal = index;
    emit(AkademikInitial());
  }

  void clickActiveButtonMhsAsing(final int index) {
    idnexMhsAsing = index;
    emit(AkademikInitial());
  }
}
