import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final int idx;
  final Function(int idx)? onTap;
  final String playerSymbol;
  final bool isWinIndex;

  const Field({
    Key? key,
    required this.idx,
    required this.onTap,
    required this.playerSymbol,
    required this.isWinIndex,
  }) : super(key: key);

  final BorderSide _borderSide = const BorderSide(
      color: Colors.black, width: 2.0, style: BorderStyle.solid);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        margin: const EdgeInsets.all(0.0),
        decoration: BoxDecoration(border: _determineBorder()),
        child: Center(
            child: Text(playerSymbol,
                style: TextStyle(
                  fontSize: 50,
                  color: isWinIndex ? Colors.green : Colors.black87,
                ))),
      ),
    );
  }

  void _handleTap() {
    // only send tap events if the field is empty
    if (playerSymbol == "") {
      onTap?.call(idx);
    }
  }

  /// Returns a border to draw depending on this field index.
  Border _determineBorder() {
    Border determinedBorder = Border.all();

    switch (idx) {
      case 0:
        determinedBorder = Border(bottom: _borderSide, right: _borderSide);
        break;
      case 1:
        determinedBorder =
            Border(left: _borderSide, bottom: _borderSide, right: _borderSide);
        break;
      case 2:
        determinedBorder = Border(left: _borderSide, bottom: _borderSide);
        break;
      case 3:
        determinedBorder =
            Border(bottom: _borderSide, right: _borderSide, top: _borderSide);
        break;
      case 4:
        determinedBorder = Border(
            left: _borderSide,
            bottom: _borderSide,
            right: _borderSide,
            top: _borderSide);
        break;
      case 5:
        determinedBorder =
            Border(left: _borderSide, bottom: _borderSide, top: _borderSide);
        break;
      case 6:
        determinedBorder = Border(right: _borderSide, top: _borderSide);
        break;
      case 7:
        determinedBorder =
            Border(left: _borderSide, top: _borderSide, right: _borderSide);
        break;
      case 8:
        determinedBorder = Border(left: _borderSide, top: _borderSide);
        break;
    }

    return determinedBorder;
  }
}
