import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tictactoe/core/error/failure.dart';
import 'package:tictactoe/features/home/games/domain/entities/filter_model.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';
import 'package:tictactoe/features/home/games/domain/repositories/games_repository.dart';

import '../../../common/games_constants.dart';

part 'games_cubit.freezed.dart';
part 'games_state.dart';

@injectable
class GamesCubit extends Cubit<GamesState> {
  final GamesRepository _gamesRepository;

  final onFilterChanged = BehaviorSubject<FilterModel>.seeded(FilterModel.all);

  GamesCubit(this._gamesRepository) : super(const GamesState.initial());

  Future<void> getGames(
    int pageKey,
    PagingController<int, GameModel> pagingController,
  ) async {
    try {
      int offset = (pageKey * HomeConstants.pagingLimit).toInt();
      final result = await _gamesRepository.getGames(
          offset: offset, status: onFilterChanged.value.status);

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

  Future<void> setFilter(FilterModel filterModel) async {
    onFilterChanged.add(filterModel);
  }
}
