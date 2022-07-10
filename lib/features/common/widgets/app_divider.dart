import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final Widget widget;

  const AppDivider._({Key? key, required this.widget}) : super(key: key);

  factory AppDivider.vertical({Key? key}) => AppDivider._(
      key: key,
      widget: const SizedBox(
        height: 15,
      ));

  factory AppDivider.horizontal({Key? key}) => AppDivider._(
      key: key,
      widget: const SizedBox(
        width: 15,
      ));

  @override
  Widget build(BuildContext context) {
    return widget;
  }
}
