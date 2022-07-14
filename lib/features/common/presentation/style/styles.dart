import 'package:flutter/material.dart';

class AppMargins {
  static EdgeInsets get largeMargins =>
      const EdgeInsets.fromLTRB(38.0, 8.0, 38.0, 8.0);

  static EdgeInsets get defaultMargins =>
      const EdgeInsets.fromLTRB(16.0, 8, 16.0, 8.0);

  static EdgeInsets get contentMargins =>
      const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0);
}

TextStyle get appButtonTextStyle =>
    titleTextStyle.copyWith(color: Colors.white);

TextStyle get titleTextStyle => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );

TextStyle get appDefaultTextStyle => const TextStyle(fontSize: 14);
