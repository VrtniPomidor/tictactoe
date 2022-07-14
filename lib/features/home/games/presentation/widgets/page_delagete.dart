import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';
import 'package:tictactoe/features/home/games/presentation/bloc/games_cubit.dart';

import 'game_item.dart';

class PageDelegate extends StatefulWidget {
  const PageDelegate({
    Key? key,
  }) : super(key: key);

  @override
  State<PageDelegate> createState() => _PageDelegateState();
}

class _PageDelegateState extends State<PageDelegate> {
  final PagingController<int, GameModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, GameModel>(
      pagingController: _pagingController,
      padding: AppMargins.defaultMargins.copyWith(top: 0),
      builderDelegate: PagedChildBuilderDelegate<GameModel>(
        itemBuilder: (context, item, index) => GameItem(
          gameModel: item,
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
    context.read<GamesCubit>().onFilterChanged.close();
    _pagingController.dispose();
    super.dispose();
  }
}
