// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerResponse _$PlayerResponseFromJson(Map<String, dynamic> json) {
  return _PlayerResponse.fromJson(json);
}

/// @nodoc
mixin _$PlayerResponse {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerResponseCopyWith<PlayerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerResponseCopyWith<$Res> {
  factory $PlayerResponseCopyWith(
          PlayerResponse value, $Res Function(PlayerResponse) then) =
      _$PlayerResponseCopyWithImpl<$Res>;
  $Res call({int id, String username});
}

/// @nodoc
class _$PlayerResponseCopyWithImpl<$Res>
    implements $PlayerResponseCopyWith<$Res> {
  _$PlayerResponseCopyWithImpl(this._value, this._then);

  final PlayerResponse _value;
  // ignore: unused_field
  final $Res Function(PlayerResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayerResponseCopyWith<$Res>
    implements $PlayerResponseCopyWith<$Res> {
  factory _$$_PlayerResponseCopyWith(
          _$_PlayerResponse value, $Res Function(_$_PlayerResponse) then) =
      __$$_PlayerResponseCopyWithImpl<$Res>;
  @override
  $Res call({int id, String username});
}

/// @nodoc
class __$$_PlayerResponseCopyWithImpl<$Res>
    extends _$PlayerResponseCopyWithImpl<$Res>
    implements _$$_PlayerResponseCopyWith<$Res> {
  __$$_PlayerResponseCopyWithImpl(
      _$_PlayerResponse _value, $Res Function(_$_PlayerResponse) _then)
      : super(_value, (v) => _then(v as _$_PlayerResponse));

  @override
  _$_PlayerResponse get _value => super._value as _$_PlayerResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_PlayerResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerResponse implements _PlayerResponse {
  const _$_PlayerResponse({required this.id, required this.username});

  factory _$_PlayerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerResponseFromJson(json);

  @override
  final int id;
  @override
  final String username;

  @override
  String toString() {
    return 'PlayerResponse(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerResponseCopyWith<_$_PlayerResponse> get copyWith =>
      __$$_PlayerResponseCopyWithImpl<_$_PlayerResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerResponseToJson(this);
  }
}

abstract class _PlayerResponse implements PlayerResponse {
  const factory _PlayerResponse(
      {required final int id,
      required final String username}) = _$_PlayerResponse;

  factory _PlayerResponse.fromJson(Map<String, dynamic> json) =
      _$_PlayerResponse.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerResponseCopyWith<_$_PlayerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
