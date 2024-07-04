part of 'sdm_cubit.dart';

@immutable
sealed class SdmState {}

final class SdmInitial extends SdmState {}

final class SdmJumlah extends SdmState{}

final class SdmGender extends SdmState{}

final class SdmJumlahDosenLoading extends SdmJumlah {}
final class SdmJumlahDosenLoaded extends SdmJumlah {
  final DataJumlahDosen data;
  SdmJumlahDosenLoaded(this.data);
}

final class SdmGenderDosenLoading extends SdmGender{}
final class SdmGenderDosenLoaded extends SdmGender {
  final DataGenderDosen data;
  SdmGenderDosenLoaded(this.data);
}

final class SdmJumlahTendikLoading extends SdmJumlah{}
final class SdmJumlahTendikLoaded extends SdmJumlah {
  final DataJumlahTendik data;
  SdmJumlahTendikLoaded(this.data);
}

final class SdmGenderTendikLoading extends SdmGender {}
final class SdmGenderTendikLoaded extends SdmGender {
  final DataGenderTendik data;
  SdmGenderTendikLoaded(this.data);
}