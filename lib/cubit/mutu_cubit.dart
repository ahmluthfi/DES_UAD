import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'mutu_state.dart';

class MutuCubit extends Cubit<MutuState> {
  MutuCubit() : super(MutuInitial());

  bool isAkreditasi = true;
  int index = 0;

  void clickAppBarButton({final bool isActive = true}) {
    isAkreditasi = isActive;
    emit(AppBarButtonClicked());
  }

  void clickListViewButton(final int index) {
    this.index = index;
    emit(ListViewButtonClicked());
  }
}
