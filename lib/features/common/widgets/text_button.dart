import 'package:flutter/material.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';

class TextInkWellButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const TextInkWellButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Text(
            text,
            style: appDefaultTextStyle.copyWith(
              color: Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
