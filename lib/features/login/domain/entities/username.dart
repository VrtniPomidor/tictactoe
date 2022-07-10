import 'package:formz/formz.dart';

enum UsernameError { empty, invalid }

class Username extends FormzInput<String, UsernameError> {
  const Username.pure([String value = '']) : super.pure(value);

  const Username.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nameRegExp = RegExp(
    r'^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$',
  );

  @override
  UsernameError? validator(String value) {
    if (value.isEmpty == true || value == "") {
      return UsernameError.empty;
    }
    return _nameRegExp.hasMatch(value) && value.length < 4
        ? null
        : value.isEmpty
            ? null
            : UsernameError.invalid;
  }
}

extension Explanation on UsernameError {
  String? get name {
    switch (this) {
      case UsernameError.invalid:
        return "This is not a valid name";
      default:
        return null;
    }
  }
}
