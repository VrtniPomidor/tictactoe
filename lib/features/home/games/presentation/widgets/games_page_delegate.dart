import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';
import 'package:tictactoe/features/home/games/presentation/bloc/games_cubit.dart';

import 'game_item.dart';

class GamesPageDelegate extends StatefulWidget {
  const GamesPageDelegate({
    Key? key,
  }) : super(key: key);

  @override
  State<GamesPageDelegate> createState() => _GamesPageDelegateState();
}

class _GamesPageDelegateState extends State<GamesPageDelegate> {
  final PagingController<int, GameModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.sync(
        () => _pagingController.refresh(),
      ),
      child: PagedListView<int, GameModel>(
        pagingController: _pagingController,
        padding: AppMargins.defaultMargins.copyWith(top: 0),
        builderDelegate: PagedChildBuilderDelegate<GameModel>(
          itemBuilder: (context, item, index) => GameItem(
            gameModel: item,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<GamesCubit>().getGames(pageKey, _pagingController);
    });
    context.read<GamesCubit>().onFilterChanged.listen((event) {
      _pagingController.refresh();
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
