part of 'sdm_cubit.dart';

@immutable
sealed class SdmState {}

final class SdmInitial extends SdmState {}

final class SdmJumlahDosenLoading extends SdmState {}
final class SdmJumlahDosenLoaded extends SdmState {
  final SdmJumlahDosen data;
  SdmJumlahDosenLoaded(this.data);
}
