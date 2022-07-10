import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/failure.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';
import 'package:tictactoe/features/home/games/domain/repositories/games_repository.dart';

import '../../../../common/presentation/strings/string_constants.dart';

part 'games_cubit.freezed.dart';
part 'games_state.dart';

@injectable
class GamesCubit extends Cubit<GamesState> {
  final GamesRepository _gamesRepository;
  final int offset = 0;

  GamesCubit(this._gamesRepository) : super(const GamesState.initial());

  void getGames() async {
    try {
      emit(state.copyWith(isLoading: true));
      final result =
          await _gamesRepository.getGames(offset: offset, status: null);
      result.fold((l) => state.copyWith(error: l.errorMessage),
          (r) => emit(GamesState.initial(games: r.results)));
    } catch (error) {
      emit(state.copyWith(error: genericErrorMessage));
    } finally {
      emit(state.copyWith(isLoading: false, error: ''));
    }
  }
}
