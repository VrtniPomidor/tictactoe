import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final bool isPasswordField;
  final String? error;
  final EdgeInsets padding;
  final bool autoValidate;

  const AuthTextField._({
    Key? key,
    this.hint = '',
    required this.onChanged,
    required this.keyboardType,
    this.isPasswordField = false,
    this.error,
    this.padding = const EdgeInsets.all(0),
    this.autoValidate = false,
  }) : super(key: key);

  factory AuthTextField.username({
    Key? key,
    hint = '',
    required onChanged,
    error,
    padding = const EdgeInsets.all(0),
    autoValidate = false,
  }) =>
      AuthTextField._(
        key: key,
        hint: hint,
        onChanged: onChanged,
        keyboardType: TextInputType.text,
        error: error,
        padding: padding,
        autoValidate: autoValidate,
        isPasswordField: false,
      );

  factory AuthTextField.password({
    Key? key,
    hint = '',
    required onChanged,
    error,
    padding = const EdgeInsets.all(0),
    autoValidate = false,
  }) =>
      AuthTextField._(
        key: key,
        hint: hint,
        onChanged: onChanged,
        error: error,
        keyboardType: TextInputType.text,
        padding: padding,
        autoValidate: autoValidate,
        isPasswordField: true,
      );

  @override
  Widget build(BuildContext context) {
    UnderlineInputBorder border = const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent, width: 2));
    UnderlineInputBorder errorBorder = const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.redAccent, width: 2));
    return Padding(
      padding: padding,
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          filled: true,
          hintText: hint,
          border: border,
          disabledBorder: border,
          enabledBorder: border,
          errorBorder: errorBorder,
          focusedErrorBorder: errorBorder,
          errorText: autoValidate ? error : null,
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        autocorrect: false,
        textInputAction: TextInputAction.done,
        obscureText: isPasswordField,
        maxLines: 1,
        onChanged: onChanged,
      ),
    );
  }
}
