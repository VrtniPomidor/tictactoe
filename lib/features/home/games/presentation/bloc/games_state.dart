part of 'games_cubit.dart';

@freezed
class GamesState with _$GamesState {
  const factory GamesState.initial({
    @Default(FilterModel.all) FilterModel filterModel,
    @Default('') String error,
  }) = _Initial;
}
