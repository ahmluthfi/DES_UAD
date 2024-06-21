part of 'prestasi_cubit.dart';

@immutable
sealed class PrestasiState {}

final class PrestasiInitial extends PrestasiState {}

class CakupanPrestasiButtonClicked extends PrestasiState{}
