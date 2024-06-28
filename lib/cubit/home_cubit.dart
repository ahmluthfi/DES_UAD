import 'package:bloc/bloc.dart';
import 'package:des_uad/data/datasources/data_sources.dart';
import 'package:des_uad/data/models/akademik_student_status_model.dart';
import 'package:des_uad/data/models/student_body_model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.dataSource) : super(HomeInitial());

  final DataSource dataSource;

  Future<void> getStudentBody() async {
    emit(StudentBodyLoading());
    final StudentBody studentBody = await dataSource.getStudentBody();
    emit(StudentBodyLoaded(studentBody.data));
  }

  Future<void> getStudentStatus() async {
    emit(AkademikStudentStatusLoading());
    final AkademikStudentStatus akademikStatus =
        await dataSource.getStudentStatus();
    emit(AkademikStudentStatusLoaded(akademikStatus.data));
  }
}
