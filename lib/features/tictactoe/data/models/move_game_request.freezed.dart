// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'move_game_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoveGameRequest _$MoveGameRequestFromJson(Map<String, dynamic> json) {
  return _MoveGameRequest.fromJson(json);
}

/// @nodoc
mixin _$MoveGameRequest {
  int get row => throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveGameRequestCopyWith<MoveGameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveGameRequestCopyWith<$Res> {
  factory $MoveGameRequestCopyWith(
          MoveGameRequest value, $Res Function(MoveGameRequest) then) =
      _$MoveGameRequestCopyWithImpl<$Res>;
  $Res call({int row, int column});
}

/// @nodoc
class _$MoveGameRequestCopyWithImpl<$Res>
    implements $MoveGameRequestCopyWith<$Res> {
  _$MoveGameRequestCopyWithImpl(this._value, this._then);

  final MoveGameRequest _value;
  // ignore: unused_field
  final $Res Function(MoveGameRequest) _then;

  @override
  $Res call({
    Object? row = freezed,
    Object? column = freezed,
  }) {
    return _then(_value.copyWith(
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: column == freezed
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MoveGameRequestCopyWith<$Res>
    implements $MoveGameRequestCopyWith<$Res> {
  factory _$$_MoveGameRequestCopyWith(
          _$_MoveGameRequest value, $Res Function(_$_MoveGameRequest) then) =
      __$$_MoveGameRequestCopyWithImpl<$Res>;
  @override
  $Res call({int row, int column});
}

/// @nodoc
class __$$_MoveGameRequestCopyWithImpl<$Res>
    extends _$MoveGameRequestCopyWithImpl<$Res>
    implements _$$_MoveGameRequestCopyWith<$Res> {
  __$$_MoveGameRequestCopyWithImpl(
      _$_MoveGameRequest _value, $Res Function(_$_MoveGameRequest) _then)
      : super(_value, (v) => _then(v as _$_MoveGameRequest));

  @override
  _$_MoveGameRequest get _value => super._value as _$_MoveGameRequest;

  @override
  $Res call({
    Object? row = freezed,
    Object? column = freezed,
  }) {
    return _then(_$_MoveGameRequest(
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: column == freezed
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoveGameRequest implements _MoveGameRequest {
  const _$_MoveGameRequest({required this.row, required this.column});

  factory _$_MoveGameRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MoveGameRequestFromJson(json);

  @override
  final int row;
  @override
  final int column;

  @override
  String toString() {
    return 'MoveGameRequest(row: $row, column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoveGameRequest &&
            const DeepCollectionEquality().equals(other.row, row) &&
            const DeepCollectionEquality().equals(other.column, column));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(row),
      const DeepCollectionEquality().hash(column));

  @JsonKey(ignore: true)
  @override
  _$$_MoveGameRequestCopyWith<_$_MoveGameRequest> get copyWith =>
      __$$_MoveGameRequestCopyWithImpl<_$_MoveGameRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveGameRequestToJson(this);
  }
}

abstract class _MoveGameRequest implements MoveGameRequest {
  const factory _MoveGameRequest(
      {required final int row, required final int column}) = _$_MoveGameRequest;

  factory _MoveGameRequest.fromJson(Map<String, dynamic> json) =
      _$_MoveGameRequest.fromJson;

  @override
  int get row;
  @override
  int get column;
  @override
  @JsonKey(ignore: true)
  _$$_MoveGameRequestCopyWith<_$_MoveGameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
