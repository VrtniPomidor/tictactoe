// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_game_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateGameRequest _$CreateGameRequestFromJson(Map<String, dynamic> json) {
  return _CreateGameRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateGameRequest {
  PlayerResponse? get winner => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_player')
  PlayerResponse? get firstPlayer => throw _privateConstructorUsedError;
  @JsonKey(name: 'second_player')
  PlayerResponse? get secondPlayer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGameRequestCopyWith<CreateGameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameRequestCopyWith<$Res> {
  factory $CreateGameRequestCopyWith(
          CreateGameRequest value, $Res Function(CreateGameRequest) then) =
      _$CreateGameRequestCopyWithImpl<$Res>;
  $Res call(
      {PlayerResponse? winner,
      @JsonKey(name: 'first_player') PlayerResponse? firstPlayer,
      @JsonKey(name: 'second_player') PlayerResponse? secondPlayer});

  $PlayerResponseCopyWith<$Res>? get winner;
  $PlayerResponseCopyWith<$Res>? get firstPlayer;
  $PlayerResponseCopyWith<$Res>? get secondPlayer;
}

/// @nodoc
class _$CreateGameRequestCopyWithImpl<$Res>
    implements $CreateGameRequestCopyWith<$Res> {
  _$CreateGameRequestCopyWithImpl(this._value, this._then);

  final CreateGameRequest _value;
  // ignore: unused_field
  final $Res Function(CreateGameRequest) _then;

  @override
  $Res call({
    Object? winner = freezed,
    Object? firstPlayer = freezed,
    Object? secondPlayer = freezed,
  }) {
    return _then(_value.copyWith(
      winner: winner == freezed
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as PlayerResponse?,
      firstPlayer: firstPlayer == freezed
          ? _value.firstPlayer
          : firstPlayer // ignore: cast_nullable_to_non_nullable
              as PlayerResponse?,
      secondPlayer: secondPlayer == freezed
          ? _value.secondPlayer
          : secondPlayer // ignore: cast_nullable_to_non_nullable
              as PlayerResponse?,
    ));
  }

  @override
  $PlayerResponseCopyWith<$Res>? get winner {
    if (_value.winner == null) {
      return null;
    }

    return $PlayerResponseCopyWith<$Res>(_value.winner!, (value) {
      return _then(_value.copyWith(winner: value));
    });
  }

  @override
  $PlayerResponseCopyWith<$Res>? get firstPlayer {
    if (_value.firstPlayer == null) {
      return null;
    }

    return $PlayerResponseCopyWith<$Res>(_value.firstPlayer!, (value) {
      return _then(_value.copyWith(firstPlayer: value));
    });
  }

  @override
  $PlayerResponseCopyWith<$Res>? get secondPlayer {
    if (_value.secondPlayer == null) {
      return null;
    }

    return $PlayerResponseCopyWith<$Res>(_value.secondPlayer!, (value) {
      return _then(_value.copyWith(secondPlayer: value));
    });
  }
}

/// @nodoc
abstract class _$$_CreateGameRequestCopyWith<$Res>
    implements $CreateGameRequestCopyWith<$Res> {
  factory _$$_CreateGameRequestCopyWith(_$_CreateGameRequest value,
          $Res Function(_$_CreateGameRequest) then) =
      __$$_CreateGameRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {PlayerResponse? winner,
      @JsonKey(name: 'first_player') PlayerResponse? firstPlayer,
      @JsonKey(name: 'second_player') PlayerResponse? secondPlayer});

  @override
  $PlayerResponseCopyWith<$Res>? get winner;
  @override
  $PlayerResponseCopyWith<$Res>? get firstPlayer;
  @override
  $PlayerResponseCopyWith<$Res>? get secondPlayer;
}

/// @nodoc
class __$$_CreateGameRequestCopyWithImpl<$Res>
    extends _$CreateGameRequestCopyWithImpl<$Res>
    implements _$$_CreateGameRequestCopyWith<$Res> {
  __$$_CreateGameRequestCopyWithImpl(
      _$_CreateGameRequest _value, $Res Function(_$_CreateGameRequest) _then)
      : super(_value, (v) => _then(v as _$_CreateGameRequest));

  @override
  _$_CreateGameRequest get _value => super._value as _$_CreateGameRequest;

  @override
  $Res call({
    Object? winner = freezed,
    Object? firstPlayer = freezed,
    Object? secondPlayer = freezed,
  }) {
    return _then(_$_CreateGameRequest(
      winner: winner == freezed
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as PlayerResponse?,
      firstPlayer: firstPlayer == freezed
          ? _value.firstPlayer
          : firstPlayer // ignore: cast_nullable_to_non_nullable
              as PlayerResponse?,
      secondPlayer: secondPlayer == freezed
          ? _value.secondPlayer
          : secondPlayer // ignore: cast_nullable_to_non_nullable
              as PlayerResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateGameRequest implements _CreateGameRequest {
  const _$_CreateGameRequest(
      {required this.winner,
      @JsonKey(name: 'first_player') this.firstPlayer,
      @JsonKey(name: 'second_player') this.secondPlayer});

  factory _$_CreateGameRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateGameRequestFromJson(json);

  @override
  final PlayerResponse? winner;
  @override
  @JsonKey(name: 'first_player')
  final PlayerResponse? firstPlayer;
  @override
  @JsonKey(name: 'second_player')
  final PlayerResponse? secondPlayer;

  @override
  String toString() {
    return 'CreateGameRequest(winner: $winner, firstPlayer: $firstPlayer, secondPlayer: $secondPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateGameRequest &&
            const DeepCollectionEquality().equals(other.winner, winner) &&
            const DeepCollectionEquality()
                .equals(other.firstPlayer, firstPlayer) &&
            const DeepCollectionEquality()
                .equals(other.secondPlayer, secondPlayer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(winner),
      const DeepCollectionEquality().hash(firstPlayer),
      const DeepCollectionEquality().hash(secondPlayer));

  @JsonKey(ignore: true)
  @override
  _$$_CreateGameRequestCopyWith<_$_CreateGameRequest> get copyWith =>
      __$$_CreateGameRequestCopyWithImpl<_$_CreateGameRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateGameRequestToJson(this);
  }
}

abstract class _CreateGameRequest implements CreateGameRequest {
  const factory _CreateGameRequest(
          {required final PlayerResponse? winner,
          @JsonKey(name: 'first_player') final PlayerResponse? firstPlayer,
          @JsonKey(name: 'second_player') final PlayerResponse? secondPlayer}) =
      _$_CreateGameRequest;

  factory _CreateGameRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateGameRequest.fromJson;

  @override
  PlayerResponse? get winner;
  @override
  @JsonKey(name: 'first_player')
  PlayerResponse? get firstPlayer;
  @override
  @JsonKey(name: 'second_player')
  PlayerResponse? get secondPlayer;
  @override
  @JsonKey(ignore: true)
  _$$_CreateGameRequestCopyWith<_$_CreateGameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
