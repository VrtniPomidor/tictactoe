// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GamesWrapperModel {
  int get count => throw _privateConstructorUsedError;
  List<GameModel> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamesWrapperModelCopyWith<GamesWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesWrapperModelCopyWith<$Res> {
  factory $GamesWrapperModelCopyWith(
          GamesWrapperModel value, $Res Function(GamesWrapperModel) then) =
      _$GamesWrapperModelCopyWithImpl<$Res>;
  $Res call({int count, List<GameModel> results});
}

/// @nodoc
class _$GamesWrapperModelCopyWithImpl<$Res>
    implements $GamesWrapperModelCopyWith<$Res> {
  _$GamesWrapperModelCopyWithImpl(this._value, this._then);

  final GamesWrapperModel _value;
  // ignore: unused_field
  final $Res Function(GamesWrapperModel) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GameModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_GamesWrapperModelCopyWith<$Res>
    implements $GamesWrapperModelCopyWith<$Res> {
  factory _$$_GamesWrapperModelCopyWith(_$_GamesWrapperModel value,
          $Res Function(_$_GamesWrapperModel) then) =
      __$$_GamesWrapperModelCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<GameModel> results});
}

/// @nodoc
class __$$_GamesWrapperModelCopyWithImpl<$Res>
    extends _$GamesWrapperModelCopyWithImpl<$Res>
    implements _$$_GamesWrapperModelCopyWith<$Res> {
  __$$_GamesWrapperModelCopyWithImpl(
      _$_GamesWrapperModel _value, $Res Function(_$_GamesWrapperModel) _then)
      : super(_value, (v) => _then(v as _$_GamesWrapperModel));

  @override
  _$_GamesWrapperModel get _value => super._value as _$_GamesWrapperModel;

  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_GamesWrapperModel(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GameModel>,
    ));
  }
}

/// @nodoc

class _$_GamesWrapperModel implements _GamesWrapperModel {
  _$_GamesWrapperModel(
      {required this.count, required final List<GameModel> results})
      : _results = results;

  @override
  final int count;
  final List<GameModel> _results;
  @override
  List<GameModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GamesWrapperModel(count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GamesWrapperModel &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_GamesWrapperModelCopyWith<_$_GamesWrapperModel> get copyWith =>
      __$$_GamesWrapperModelCopyWithImpl<_$_GamesWrapperModel>(
          this, _$identity);
}

abstract class _GamesWrapperModel implements GamesWrapperModel {
  factory _GamesWrapperModel(
      {required final int count,
      required final List<GameModel> results}) = _$_GamesWrapperModel;

  @override
  int get count;
  @override
  List<GameModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_GamesWrapperModelCopyWith<_$_GamesWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameModel {
  int get id => throw _privateConstructorUsedError;
  List<List<int?>> get board => throw _privateConstructorUsedError;
  PlayerModel? get winner => throw _privateConstructorUsedError;
  PlayerModel? get firstPlayer => throw _privateConstructorUsedError;
  PlayerModel? get secondPlayer => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameModelCopyWith<GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      List<List<int?>> board,
      PlayerModel? winner,
      PlayerModel? firstPlayer,
      PlayerModel? secondPlayer,
      DateTime created,
      String status});

  $PlayerModelCopyWith<$Res>? get winner;
  $PlayerModelCopyWith<$Res>? get firstPlayer;
  $PlayerModelCopyWith<$Res>? get secondPlayer;
}

/// @nodoc
class _$GameModelCopyWithImpl<$Res> implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  final GameModel _value;
  // ignore: unused_field
  final $Res Function(GameModel) _then;

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
              as PlayerModel?,
      firstPlayer: firstPlayer == freezed
          ? _value.firstPlayer
          : firstPlayer // ignore: cast_nullable_to_non_nullable
              as PlayerModel?,
      secondPlayer: secondPlayer == freezed
          ? _value.secondPlayer
          : secondPlayer // ignore: cast_nullable_to_non_nullable
              as PlayerModel?,
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
  $PlayerModelCopyWith<$Res>? get winner {
    if (_value.winner == null) {
      return null;
    }

    return $PlayerModelCopyWith<$Res>(_value.winner!, (value) {
      return _then(_value.copyWith(winner: value));
    });
  }

  @override
  $PlayerModelCopyWith<$Res>? get firstPlayer {
    if (_value.firstPlayer == null) {
      return null;
    }

    return $PlayerModelCopyWith<$Res>(_value.firstPlayer!, (value) {
      return _then(_value.copyWith(firstPlayer: value));
    });
  }

  @override
  $PlayerModelCopyWith<$Res>? get secondPlayer {
    if (_value.secondPlayer == null) {
      return null;
    }

    return $PlayerModelCopyWith<$Res>(_value.secondPlayer!, (value) {
      return _then(_value.copyWith(secondPlayer: value));
    });
  }
}

/// @nodoc
abstract class _$$_GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$$_GameModelCopyWith(
          _$_GameModel value, $Res Function(_$_GameModel) then) =
      __$$_GameModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      List<List<int?>> board,
      PlayerModel? winner,
      PlayerModel? firstPlayer,
      PlayerModel? secondPlayer,
      DateTime created,
      String status});

  @override
  $PlayerModelCopyWith<$Res>? get winner;
  @override
  $PlayerModelCopyWith<$Res>? get firstPlayer;
  @override
  $PlayerModelCopyWith<$Res>? get secondPlayer;
}

/// @nodoc
class __$$_GameModelCopyWithImpl<$Res> extends _$GameModelCopyWithImpl<$Res>
    implements _$$_GameModelCopyWith<$Res> {
  __$$_GameModelCopyWithImpl(
      _$_GameModel _value, $Res Function(_$_GameModel) _then)
      : super(_value, (v) => _then(v as _$_GameModel));

  @override
  _$_GameModel get _value => super._value as _$_GameModel;

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
    return _then(_$_GameModel(
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
              as PlayerModel?,
      firstPlayer: firstPlayer == freezed
          ? _value.firstPlayer
          : firstPlayer // ignore: cast_nullable_to_non_nullable
              as PlayerModel?,
      secondPlayer: secondPlayer == freezed
          ? _value.secondPlayer
          : secondPlayer // ignore: cast_nullable_to_non_nullable
              as PlayerModel?,
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

class _$_GameModel implements _GameModel {
  _$_GameModel(
      {required this.id,
      required final List<List<int?>> board,
      this.winner,
      this.firstPlayer,
      this.secondPlayer,
      required this.created,
      required this.status})
      : _board = board;

  @override
  final int id;
  final List<List<int?>> _board;
  @override
  List<List<int?>> get board {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_board);
  }

  @override
  final PlayerModel? winner;
  @override
  final PlayerModel? firstPlayer;
  @override
  final PlayerModel? secondPlayer;
  @override
  final DateTime created;
  @override
  final String status;

  @override
  String toString() {
    return 'GameModel(id: $id, board: $board, winner: $winner, firstPlayer: $firstPlayer, secondPlayer: $secondPlayer, created: $created, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameModel &&
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
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      __$$_GameModelCopyWithImpl<_$_GameModel>(this, _$identity);
}

abstract class _GameModel implements GameModel {
  factory _GameModel(
      {required final int id,
      required final List<List<int?>> board,
      final PlayerModel? winner,
      final PlayerModel? firstPlayer,
      final PlayerModel? secondPlayer,
      required final DateTime created,
      required final String status}) = _$_GameModel;

  @override
  int get id;
  @override
  List<List<int?>> get board;
  @override
  PlayerModel? get winner;
  @override
  PlayerModel? get firstPlayer;
  @override
  PlayerModel? get secondPlayer;
  @override
  DateTime get created;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get isMe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerModelCopyWith<PlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerModelCopyWith<$Res> {
  factory $PlayerModelCopyWith(
          PlayerModel value, $Res Function(PlayerModel) then) =
      _$PlayerModelCopyWithImpl<$Res>;
  $Res call({int id, String username, bool isMe});
}

/// @nodoc
class _$PlayerModelCopyWithImpl<$Res> implements $PlayerModelCopyWith<$Res> {
  _$PlayerModelCopyWithImpl(this._value, this._then);

  final PlayerModel _value;
  // ignore: unused_field
  final $Res Function(PlayerModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? isMe = freezed,
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
      isMe: isMe == freezed
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayerModelCopyWith<$Res>
    implements $PlayerModelCopyWith<$Res> {
  factory _$$_PlayerModelCopyWith(
          _$_PlayerModel value, $Res Function(_$_PlayerModel) then) =
      __$$_PlayerModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String username, bool isMe});
}

/// @nodoc
class __$$_PlayerModelCopyWithImpl<$Res> extends _$PlayerModelCopyWithImpl<$Res>
    implements _$$_PlayerModelCopyWith<$Res> {
  __$$_PlayerModelCopyWithImpl(
      _$_PlayerModel _value, $Res Function(_$_PlayerModel) _then)
      : super(_value, (v) => _then(v as _$_PlayerModel));

  @override
  _$_PlayerModel get _value => super._value as _$_PlayerModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? isMe = freezed,
  }) {
    return _then(_$_PlayerModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: isMe == freezed
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PlayerModel implements _PlayerModel {
  _$_PlayerModel({required this.id, required this.username, this.isMe = false});

  @override
  final int id;
  @override
  final String username;
  @override
  @JsonKey()
  final bool isMe;

  @override
  String toString() {
    return 'PlayerModel(id: $id, username: $username, isMe: $isMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.isMe, isMe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(isMe));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerModelCopyWith<_$_PlayerModel> get copyWith =>
      __$$_PlayerModelCopyWithImpl<_$_PlayerModel>(this, _$identity);
}

abstract class _PlayerModel implements PlayerModel {
  factory _PlayerModel(
      {required final int id,
      required final String username,
      final bool isMe}) = _$_PlayerModel;

  @override
  int get id;
  @override
  String get username;
  @override
  bool get isMe;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerModelCopyWith<_$_PlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
