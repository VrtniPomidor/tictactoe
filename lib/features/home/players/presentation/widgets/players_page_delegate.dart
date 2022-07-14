import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';
import 'package:tictactoe/features/home/games/presentation/bloc/games_cubit.dart';
import 'package:tictactoe/features/home/players/presentation/bloc/players_cubit.dart';

import '../../domain/entities/players_score_model.dart';
import 'player_item.dart';

class PlayersPageDelegate extends StatefulWidget {
  const PlayersPageDelegate({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayersPageDelegate> createState() => _PlayersPageDelegateState();
}

class _PlayersPageDelegateState extends State<PlayersPageDelegate> {
  final PagingController<int, PlayerScoreModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.sync(
        () => _pagingController.refresh(),
      ),
      child: PagedListView<int, PlayerScoreModel>(
        pagingController: _pagingController,
        padding: AppMargins.defaultMargins.copyWith(top: 0),
        builderDelegate: PagedChildBuilderDelegate<PlayerScoreModel>(
          itemBuilder: (context, item, index) => PlayerItem(
            playerScoreModel: item,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<PlayersCubit>().getGames(pageKey, _pagingController);
    });
    context.read<GamesCubit>().onFilterChanged.listen((event) {
      _pagingController.refresh();
    });
    super.initState();
  }

  @override
  void dispose() {
    context.read<GamesCubit>().onFilterChanged.close();
    _pagingController.dispose();
    super.dispose();
  }
}
