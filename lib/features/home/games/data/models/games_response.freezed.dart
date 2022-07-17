// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'games_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameResponse _$GameResponseFromJson(Map<String, dynamic> json) {
  return _GameResponse.fromJson(json);
}

/// @nodoc
mixin _$GameResponse {
  int get id => throw _privateConstructorUsedError;
  List<List<int?>> get board => throw _privateConstructorUsedError;
  PlayerResponse? get winner => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_player')
  PlayerResponse? get firstPlayer => throw _privateConstructorUsedError;
  @JsonKey(name: 'second_player')
  PlayerResponse? get secondPlayer => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameResponseCopyWith<GameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameResponseCopyWith<$Res> {
  factory $GameResponseCopyWith(
          GameResponse value, $Res Function(GameResponse) then) =
      _$GameResponseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      List<List<int?>> board,
      PlayerResponse? winner,
      @JsonKey(name: 'first_player') PlayerResponse? firstPlayer,
      @JsonKey(name: 'second_player') PlayerResponse? secondPlayer,
      DateTime created,
      String status});

  $PlayerResponseCopyWith<$Res>? get winner;
  $PlayerResponseCopyWith<$Res>? get firstPlayer;
  $PlayerResponseCopyWith<$Res>? get secondPlayer;
}

/// @nodoc
class _$GameResponseCopyWithImpl<$Res> implements $GameResponseCopyWith<$Res> {
  _$GameResponseCopyWithImpl(this._value, this._then);

  final GameResponse _value;
  // ignore: unused_field
  final $Res Function(GameResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? board = freezed,
    Object? winner = freezed,
    Object? firstPlayer = freezed,
    Object? secondPlayer = freezed,
    Object? created = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as List<List<int?>>,
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
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_GameResponseCopyWith<$Res>
    implements $GameResponseCopyWith<$Res> {
  factory _$$_GameResponseCopyWith(
          _$_GameResponse value, $Res Function(_$_GameResponse) then) =
      __$$_GameResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      List<List<int?>> board,
      PlayerResponse? winner,
      @JsonKey(name: 'first_player') PlayerResponse? firstPlayer,
      @JsonKey(name: 'second_player') PlayerResponse? secondPlayer,
      DateTime created,
      String status});

  @override
  $PlayerResponseCopyWith<$Res>? get winner;
  @override
  $PlayerResponseCopyWith<$Res>? get firstPlayer;
  @override
  $PlayerResponseCopyWith<$Res>? get secondPlayer;
}

/// @nodoc
class __$$_GameResponseCopyWithImpl<$Res>
    extends _$GameResponseCopyWithImpl<$Res>
    implements _$$_GameResponseCopyWith<$Res> {
  __$$_GameResponseCopyWithImpl(
      _$_GameResponse _value, $Res Function(_$_GameResponse) _then)
      : super(_value, (v) => _then(v as _$_GameResponse));

  @override
  _$_GameResponse get _value => super._value as _$_GameResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? board = freezed,
    Object? winner = freezed,
    Object? firstPlayer = freezed,
    Object? secondPlayer = freezed,
    Object? created = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_GameResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      board: board == freezed
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as List<List<int?>>,
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
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameResponse implements _GameResponse {
  const _$_GameResponse(
      {required this.id,
      required final List<List<int?>> board,
      required this.winner,
      @JsonKey(name: 'first_player') this.firstPlayer,
      @JsonKey(name: 'second_player') this.secondPlayer,
      required this.created,
      required this.status})
      : _board = board;

  factory _$_GameResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GameResponseFromJson(json);

  @override
  final int id;
  final List<List<int?>> _board;
  @override
  List<List<int?>> get board {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_board);
  }

  @override
  final PlayerResponse? winner;
  @override
  @JsonKey(name: 'first_player')
  final PlayerResponse? firstPlayer;
  @override
  @JsonKey(name: 'second_player')
  final PlayerResponse? secondPlayer;
  @override
  final DateTime created;
  @override
  final String status;

  @override
  String toString() {
    return 'GameResponse(id: $id, board: $board, winner: $winner, firstPlayer: $firstPlayer, secondPlayer: $secondPlayer, created: $created, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            const DeepCollectionEquality().equals(other.winner, winner) &&
            const DeepCollectionEquality()
                .equals(other.firstPlayer, firstPlayer) &&
            const DeepCollectionEquality()
                .equals(other.secondPlayer, secondPlayer) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_board),
      const DeepCollectionEquality().hash(winner),
      const DeepCollectionEquality().hash(firstPlayer),
      const DeepCollectionEquality().hash(secondPlayer),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_GameResponseCopyWith<_$_GameResponse> get copyWith =>
      __$$_GameResponseCopyWithImpl<_$_GameResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameResponseToJson(this);
  }
}

abstract class _GameResponse implements GameResponse {
  const factory _GameResponse(
      {required final int id,
      required final List<List<int?>> board,
      required final PlayerResponse? winner,
      @JsonKey(name: 'first_player') final PlayerResponse? firstPlayer,
      @JsonKey(name: 'second_player') final PlayerResponse? secondPlayer,
      required final DateTime created,
      required final String status}) = _$_GameResponse;

  factory _GameResponse.fromJson(Map<String, dynamic> json) =
      _$_GameResponse.fromJson;

  @override
  int get id;
  @override
  List<List<int?>> get board;
  @override
  PlayerResponse? get winner;
  @override
  @JsonKey(name: 'first_player')
  PlayerResponse? get firstPlayer;
  @override
  @JsonKey(name: 'second_player')
  PlayerResponse? get secondPlayer;
  @override
  DateTime get created;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_GameResponseCopyWith<_$_GameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
