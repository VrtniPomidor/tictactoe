import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/failure.dart';
import 'package:tictactoe/features/home/players/domain/repositories/players_repository.dart';

import '../../../common/games_constants.dart';
import '../../domain/entities/players_score_model.dart';

part 'players_cubit.freezed.dart';
part 'players_state.dart';

@injectable
class PlayersCubit extends Cubit<PlayersState> {
  final PlayersRepository _playersRepository;

  PlayersCubit(this._playersRepository) : super(const PlayersState.initial());

  Future<void> getGames(
    int pageKey,
    PagingController<int, PlayerScoreModel> pagingController,
  ) async {
    try {
      int offset = (pageKey * HomeConstants.pagingLimit).toInt();
      final result = await _playersRepository.getPlayers(offset: offset);

      result.fold((l) => emit(state.copyWith(error: l.errorMessage)), (r) {
        final isLastPage = offset + HomeConstants.pagingLimit >= r.count;
        if (isLastPage) {
          pagingController.appendLastPage(r.results);
        } else {
          pagingController.appendPage(r.results, pageKey + 1);
        }
      });
    } catch (error) {
      pagingController.error = error;
    }
  }
}
