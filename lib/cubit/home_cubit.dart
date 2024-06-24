import 'package:bloc/bloc.dart';
import 'package:des_uad/data/datasources/data_sources.dart';
import 'package:des_uad/data/models/student_body.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.dataSource) : super(HomeInitial());

  final DataSource dataSource;
  
  Future<void> getStudentBody() async {
    emit(HomeLoading());
      final StudentBody studentBody = await dataSource.getStudentBody();
      emit(HomeLoaded(studentBody.data));
  }
}
