import 'package:flutter/material.dart';
import 'package:tictactoe/features/common/widgets/primary_button.dart';

import 'texts/text_title.dart';

class EmptyView extends StatelessWidget {
  final String emptyMessage;
  final VoidCallback? onPressed;

  const EmptyView({Key? key, this.emptyMessage = '', this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const VerticalDivider(),
          TextTitle(text: emptyMessage),
          const VerticalDivider(),
          PrimaryButton.retry(
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
