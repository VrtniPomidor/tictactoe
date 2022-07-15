import 'package:flutter/material.dart';
import 'package:tictactoe/features/common/widgets/primary_button.dart';

import 'app_divider.dart';
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
          AppDivider.vertical(),
          TextTitle(text: emptyMessage),
          AppDivider.vertical(),
          PrimaryButton.retry(
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
