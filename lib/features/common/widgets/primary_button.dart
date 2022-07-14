import 'package:flutter/material.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';
import 'package:tictactoe/features/common/widgets/loading_indicator.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final bool isBusy;
  final VoidCallback? onPressed;

  const PrimaryButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.isBusy = false,
  }) : super(key: key);

  factory PrimaryButton.retry({
    Key? key,
    VoidCallback? onPressed,
    bool isBusy = false,
  }) =>
      PrimaryButton(
        text: 'Retry',
        onPressed: onPressed,
        isBusy: isBusy,
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onSurface: Theme.of(context).primaryColor,
          ),
          onPressed: isBusy ? null : onPressed,
          child: Container(
            margin: const EdgeInsets.all(3),
            child: isBusy
                ? const SizedBox(
                    width: 25, height: 25, child: LoadingIndicator())
                : Text(
                    text,
                    style: appButtonTextStyle,
                  ),
          ),
        ),
      ),
    );
  }
}
