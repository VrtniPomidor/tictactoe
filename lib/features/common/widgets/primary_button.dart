import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 5),
      child: SizedBox(
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: isBusy ? null : onPressed,
          child: Container(
            margin: const EdgeInsets.all(3),
            child: isBusy
                ? const SizedBox(
                    width: 25, height: 25, child: LoadingIndicator())
                : Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
