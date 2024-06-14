import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pmb_state.dart';

enum JenisPMB { persebaran, reguler, nonReguler }

class PMBCubit extends Cubit<PMBState> {
  PMBCubit() : super(PMBInitial());

  List<int> indexJenisPMB = [0, 0, 0];
  List<bool> isChecked = [true, true, true, true];

  void click(final JenisPMB jenisPMB, final int index) {
    indexJenisPMB[jenisPMB.index] = index;
    emit(PMBInitial());
  }

  void check(final int index) {
    isChecked[index] = !isChecked[index];
    emit(PMBInitial());
  }
}
