import 'dart:async';

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
  Timer? timer;
  final TictactoeRepository _tictactoeRepository;

  TictactoeCubit(this._tictactoeRepository)
      : super(const TictactoeState.initial());

  Future<void> getGame({bool isInit = false}) async {
    if (id == null) return;
    try {
      emit(state.copyWith(isLoading: isInit));
      final result = await _tictactoeRepository.getGame(id: id!);
      result.fold(
          (l) => emit(
                state.copyWith(
                  error: l.errorMessage,
                  showErrorScreen: true,
                ),
              ),
          (r) async => await _handleResult(r));
    } catch (e) {
      emit(state.copyWith(
          error: 'Something went wrong!', showErrorScreen: true));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _handleCreateResult(GameModel gameModel) async {
    id = gameModel.id;
    _handleResult(gameModel);
  }

  Future<void> _handleResult(GameModel gameModel) async {
    setupJob(gameModel.status == FilterModel.inProgress.status);
    if (gameModel.firstPlayer != null && gameModel.secondPlayer != null) {
      setupBoard(
          gameModel.board, gameModel.firstPlayer!, gameModel.secondPlayer!);
    }
    bool showJoinButton = await prepareForJoinGame(gameModel);
    emit(
      state.copyWith(
        gameModel: gameModel,
        displayElement: displayElement,
        winner: winningIndexes,
        isBoardBlocked:
            gameModel.status != FilterModel.inProgress.status || !isMyTurn(),
        imPlaying: imPlayer,
        imO: imO,
        isMyTurn: isMyTurn(),
        oTurn: oTurn,
        showJoinGameButton: showJoinButton,
        victoryType: victoryType,
        showErrorScreen: false,
      ),
    );
  }

  Future<bool> prepareForJoinGame(GameModel gameModel) async {
    if (gameModel.status != FilterModel.open.status) return false;
    if ((gameModel.firstPlayer != null && gameModel.secondPlayer != null) ||
        (gameModel.firstPlayer == null && gameModel.secondPlayer == null)) {
      return false;
    }
    if (gameModel.firstPlayer != null) {
      return !gameModel.firstPlayer!.isMe;
    }
    if (gameModel.secondPlayer != null) {
      return !gameModel.secondPlayer!.isMe;
    }
    return false;
  }

  Future<void> createGame() async {
    try {
      emit(state.copyWith(isLoading: true));
      final result = await _tictactoeRepository.createGame();
      result.fold(
          (l) => emit(
                state.copyWith(
                  error: l.errorMessage,
                  showErrorScreen: true,
                ),
              ),
          (r) async => await _handleCreateResult(r));
    } catch (e) {
      emit(state.copyWith(
          error: 'Something went wrong!', showErrorScreen: true));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> setupId({int? id}) async {
    this.id = id;
    refresh();
  }

  Future<void> refresh() async {
    if (id == null) {
      createGame();
    } else {
      getGame(isInit: true);
    }
  }

  Future<void> setupJob(bool isProgress) async {
    // Cancel previous jobs if active
    timer?.cancel();
    if (isProgress) {
      timer =
          Timer.periodic(const Duration(seconds: 5), (Timer t) => getGame());
    }
  }

  Future<void> cancelJob() async {
    timer?.cancel();
  }

  Future<void> joinGame() async {
    if (id == null) return;
    try {
      emit(state.copyWith(joinGameButtonBusy: true));
      final result = await _tictactoeRepository.joinGame(id: id!);
      result.fold(
          (l) => emit(
                state.copyWith(
                  error: l.errorMessage,
                ),
              ),
          (r) async => await getGame());
    } catch (e) {
      emit(state.copyWith(error: 'Something went wrong!'));
    } finally {
      emit(state.copyWith(joinGameButtonBusy: false));
    }
  }

  Future<void> makeMove({required int index}) async {
    if (id == null) return;
    if (!isMyTurn()) return;
    try {
      emit(state.copyWith(onMoveLoading: true, isBoardBlocked: true));
      tapped(index);
      emit(state.copyWith(displayElement: displayElement));
      var columnAndRowFromIndex = getColumnAndRowFromIndex(index: index);
      final result = await _tictactoeRepository.makeMove(
        id: id!,
        row: columnAndRowFromIndex[0],
        column: columnAndRowFromIndex[1],
      );
      result.fold(
          (l) => emit(
                state.copyWith(
                  error: l.errorMessage,
                ),
              ),
          (r) async => await getGame());
    } catch (e) {
      emit(state.copyWith(error: 'Something went wrong!'));
    } finally {
      emit(state.copyWith(onMoveLoading: false));
    }
  }

  @override
  Future<void> close() {
    timer?.cancel();
    return super.close();
  }
}
