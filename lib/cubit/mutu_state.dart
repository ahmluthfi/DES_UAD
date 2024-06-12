part of 'mutu_cubit.dart';

@immutable
sealed class MutuState {}

final class MutuInitial extends MutuState {}

final class AppBarButtonClicked extends MutuState {}

final class ListViewButtonClicked extends MutuState {}
