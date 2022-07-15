import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/failure.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';
import 'package:tictactoe/features/tictactoe/domain/repositories/tictactoe_repository.dart';
import 'package:tictactoe/features/tictactoe/presentation/mixin/game_mixin.dart';

import '../../../home/games/domain/entities/filter_model.dart';

part 'tictactoe_cubit.freezed.dart';
part 'tictactoe_state.dart';

@injectable
class TictactoeCubit extends Cubit<TictactoeState> with GameMixin {
  int? id;
  final TictactoeRepository _tictactoeRepository;

  TictactoeCubit(this._tictactoeRepository)
      : super(const TictactoeState.initial());

  Future<void> getGame() async {
    if (id == null) return;
    try {
      emit(state.copyWith(isLoading: true));
      final result = await _tictactoeRepository.getGame(id: id!);
      result.fold(
          (l) => emit(
                state.copyWith(
                  error: l.errorMessage,
                  showErrorScreen: true,
                ),
              ),
          (r) async => await handleResult(r));
    } catch (e) {
      emit(state.copyWith(
          error: 'Something went wrong!', showErrorScreen: true));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> handleResult(GameModel gameModel) async {
    if (gameModel.firstPlayer != null && gameModel.secondPlayer != null) {
      parseGrid(gameModel.board, gameModel.firstPlayer!.id,
          gameModel.secondPlayer!.id);
    }
    emit(
      state.copyWith(
        gameModel: gameModel,
        displayElement: displayElement,
        isBoardBlocked: gameModel.status != FilterModel.inProgress.status,
        showErrorScreen: false,
      ),
    );
  }

  Future<void> setupId({int? id}) async {
    this.id = id;
    await getGame();
  }
}
