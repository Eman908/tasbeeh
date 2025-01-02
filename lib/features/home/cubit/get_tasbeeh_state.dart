sealed class GetTasbeehState {}

final class GetTasbeehInitial extends GetTasbeehState {}

final class CounterUpdateState extends GetTasbeehState {}

final class TasbeehUpdateState extends GetTasbeehState {}

final class NextTasbeeh extends GetTasbeehState {}

final class ColorThemeUpdate extends GetTasbeehState {}
