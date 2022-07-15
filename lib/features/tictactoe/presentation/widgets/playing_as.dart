import 'package:flutter/material.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';

class PlayingAs extends StatelessWidget {
  final String type;

  const PlayingAs({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Playing as $type',
          style: titleTextStyle.copyWith(fontSize: 24)),
    );
  }
}
