// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorWrapper _$ErrorWrapperFromJson(Map<String, dynamic> json) {
  return _ErrorWrapper.fromJson(json);
}

/// @nodoc
mixin _$ErrorWrapper {
  List<ErrorResponse> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorWrapperCopyWith<ErrorWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorWrapperCopyWith<$Res> {
  factory $ErrorWrapperCopyWith(
          ErrorWrapper value, $Res Function(ErrorWrapper) then) =
      _$ErrorWrapperCopyWithImpl<$Res>;
  $Res call({List<ErrorResponse> errors});
}

/// @nodoc
class _$ErrorWrapperCopyWithImpl<$Res> implements $ErrorWrapperCopyWith<$Res> {
  _$ErrorWrapperCopyWithImpl(this._value, this._then);

  final ErrorWrapper _value;
  // ignore: unused_field
  final $Res Function(ErrorWrapper) _then;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorWrapperCopyWith<$Res>
    implements $ErrorWrapperCopyWith<$Res> {
  factory _$$_ErrorWrapperCopyWith(
          _$_ErrorWrapper value, $Res Function(_$_ErrorWrapper) then) =
      __$$_ErrorWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<ErrorResponse> errors});
}

/// @nodoc
class __$$_ErrorWrapperCopyWithImpl<$Res>
    extends _$ErrorWrapperCopyWithImpl<$Res>
    implements _$$_ErrorWrapperCopyWith<$Res> {
  __$$_ErrorWrapperCopyWithImpl(
      _$_ErrorWrapper _value, $Res Function(_$_ErrorWrapper) _then)
      : super(_value, (v) => _then(v as _$_ErrorWrapper));

  @override
  _$_ErrorWrapper get _value => super._value as _$_ErrorWrapper;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_$_ErrorWrapper(
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorWrapper implements _ErrorWrapper {
  _$_ErrorWrapper({required final List<ErrorResponse> errors})
      : _errors = errors;

  factory _$_ErrorWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorWrapperFromJson(json);

  final List<ErrorResponse> _errors;
  @override
  List<ErrorResponse> get errors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ErrorWrapper(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorWrapper &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorWrapperCopyWith<_$_ErrorWrapper> get copyWith =>
      __$$_ErrorWrapperCopyWithImpl<_$_ErrorWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorWrapperToJson(this);
  }
}

abstract class _ErrorWrapper implements ErrorWrapper {
  factory _ErrorWrapper({required final List<ErrorResponse> errors}) =
      _$_ErrorWrapper;

  factory _ErrorWrapper.fromJson(Map<String, dynamic> json) =
      _$_ErrorWrapper.fromJson;

  @override
  List<ErrorResponse> get errors;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorWrapperCopyWith<_$_ErrorWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponse {
  String get path => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) then) =
      _$ErrorResponseCopyWithImpl<$Res>;
  $Res call({String path, String code, String message});
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(this._value, this._then);

  final ErrorResponse _value;
  // ignore: unused_field
  final $Res Function(ErrorResponse) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorResponseCopyWith<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  factory _$$_ErrorResponseCopyWith(
          _$_ErrorResponse value, $Res Function(_$_ErrorResponse) then) =
      __$$_ErrorResponseCopyWithImpl<$Res>;
  @override
  $Res call({String path, String code, String message});
}

/// @nodoc
class __$$_ErrorResponseCopyWithImpl<$Res>
    extends _$ErrorResponseCopyWithImpl<$Res>
    implements _$$_ErrorResponseCopyWith<$Res> {
  __$$_ErrorResponseCopyWithImpl(
      _$_ErrorResponse _value, $Res Function(_$_ErrorResponse) _then)
      : super(_value, (v) => _then(v as _$_ErrorResponse));

  @override
  _$_ErrorResponse get _value => super._value as _$_ErrorResponse;

  @override
  $Res call({
    Object? path = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorResponse(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorResponse implements _ErrorResponse {
  _$_ErrorResponse(
      {required this.path, required this.code, required this.message});

  factory _$_ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorResponseFromJson(json);

  @override
  final String path;
  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'ErrorResponse(path: $path, code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorResponse &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorResponseCopyWith<_$_ErrorResponse> get copyWith =>
      __$$_ErrorResponseCopyWithImpl<_$_ErrorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorResponseToJson(this);
  }
}

abstract class _ErrorResponse implements ErrorResponse {
  factory _ErrorResponse(
      {required final String path,
      required final String code,
      required final String message}) = _$_ErrorResponse;

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponse.fromJson;

  @override
  String get path;
  @override
  String get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorResponseCopyWith<_$_ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
