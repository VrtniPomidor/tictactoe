import 'package:flutter/material.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';
import 'package:tictactoe/features/common/widgets/app_divider.dart';
import 'package:tictactoe/features/common/widgets/loading_indicator.dart';

class PlayingAs extends StatelessWidget {
  final String type;
  final bool isLoading;

  const PlayingAs({
    Key? key,
    required this.type,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isLoading)
          const SizedBox(height: 20, width: 20, child: LoadingIndicator()),
        AppDivider.horizontal(),
        Text('Playing as $type', style: titleTextStyle.copyWith(fontSize: 24)),
      ],
    );
  }
}
