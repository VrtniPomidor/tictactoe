// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'players_score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayersWrapperModel {
  int get count => throw _privateConstructorUsedError;
  List<PlayerScoreModel> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayersWrapperModelCopyWith<PlayersWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayersWrapperModelCopyWith<$Res> {
  factory $PlayersWrapperModelCopyWith(
          PlayersWrapperModel value, $Res Function(PlayersWrapperModel) then) =
      _$PlayersWrapperModelCopyWithImpl<$Res>;
  $Res call({int count, List<PlayerScoreModel> results});
}

/// @nodoc
class _$PlayersWrapperModelCopyWithImpl<$Res>
    implements $PlayersWrapperModelCopyWith<$Res> {
  _$PlayersWrapperModelCopyWithImpl(this._value, this._then);

  final PlayersWrapperModel _value;
  // ignore: unused_field
  final $Res Function(PlayersWrapperModel) _then;

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
              as List<PlayerScoreModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayersWrapperModelCopyWith<$Res>
    implements $PlayersWrapperModelCopyWith<$Res> {
  factory _$$_PlayersWrapperModelCopyWith(_$_PlayersWrapperModel value,
          $Res Function(_$_PlayersWrapperModel) then) =
      __$$_PlayersWrapperModelCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<PlayerScoreModel> results});
}

/// @nodoc
class __$$_PlayersWrapperModelCopyWithImpl<$Res>
    extends _$PlayersWrapperModelCopyWithImpl<$Res>
    implements _$$_PlayersWrapperModelCopyWith<$Res> {
  __$$_PlayersWrapperModelCopyWithImpl(_$_PlayersWrapperModel _value,
      $Res Function(_$_PlayersWrapperModel) _then)
      : super(_value, (v) => _then(v as _$_PlayersWrapperModel));

  @override
  _$_PlayersWrapperModel get _value => super._value as _$_PlayersWrapperModel;

  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_PlayersWrapperModel(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PlayerScoreModel>,
    ));
  }
}

/// @nodoc

class _$_PlayersWrapperModel implements _PlayersWrapperModel {
  _$_PlayersWrapperModel(
      {required this.count, required final List<PlayerScoreModel> results})
      : _results = results;

  @override
  final int count;
  final List<PlayerScoreModel> _results;
  @override
  List<PlayerScoreModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PlayersWrapperModel(count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayersWrapperModel &&
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
  _$$_PlayersWrapperModelCopyWith<_$_PlayersWrapperModel> get copyWith =>
      __$$_PlayersWrapperModelCopyWithImpl<_$_PlayersWrapperModel>(
          this, _$identity);
}

abstract class _PlayersWrapperModel implements PlayersWrapperModel {
  factory _PlayersWrapperModel(
      {required final int count,
      required final List<PlayerScoreModel> results}) = _$_PlayersWrapperModel;

  @override
  int get count;
  @override
  List<PlayerScoreModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PlayersWrapperModelCopyWith<_$_PlayersWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerScoreModel {
  PlayerModel get playerModel => throw _privateConstructorUsedError;
  int get gameCount => throw _privateConstructorUsedError;
  String get winRate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerScoreModelCopyWith<PlayerScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerScoreModelCopyWith<$Res> {
  factory $PlayerScoreModelCopyWith(
          PlayerScoreModel value, $Res Function(PlayerScoreModel) then) =
      _$PlayerScoreModelCopyWithImpl<$Res>;
  $Res call({PlayerModel playerModel, int gameCount, String winRate});

  $PlayerModelCopyWith<$Res> get playerModel;
}

/// @nodoc
class _$PlayerScoreModelCopyWithImpl<$Res>
    implements $PlayerScoreModelCopyWith<$Res> {
  _$PlayerScoreModelCopyWithImpl(this._value, this._then);

  final PlayerScoreModel _value;
  // ignore: unused_field
  final $Res Function(PlayerScoreModel) _then;

  @override
  $Res call({
    Object? playerModel = freezed,
    Object? gameCount = freezed,
    Object? winRate = freezed,
  }) {
    return _then(_value.copyWith(
      playerModel: playerModel == freezed
          ? _value.playerModel
          : playerModel // ignore: cast_nullable_to_non_nullable
              as PlayerModel,
      gameCount: gameCount == freezed
          ? _value.gameCount
          : gameCount // ignore: cast_nullable_to_non_nullable
              as int,
      winRate: winRate == freezed
          ? _value.winRate
          : winRate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PlayerModelCopyWith<$Res> get playerModel {
    return $PlayerModelCopyWith<$Res>(_value.playerModel, (value) {
      return _then(_value.copyWith(playerModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlayerScoreModelCopyWith<$Res>
    implements $PlayerScoreModelCopyWith<$Res> {
  factory _$$_PlayerScoreModelCopyWith(
          _$_PlayerScoreModel value, $Res Function(_$_PlayerScoreModel) then) =
      __$$_PlayerScoreModelCopyWithImpl<$Res>;
  @override
  $Res call({PlayerModel playerModel, int gameCount, String winRate});

  @override
  $PlayerModelCopyWith<$Res> get playerModel;
}

/// @nodoc
class __$$_PlayerScoreModelCopyWithImpl<$Res>
    extends _$PlayerScoreModelCopyWithImpl<$Res>
    implements _$$_PlayerScoreModelCopyWith<$Res> {
  __$$_PlayerScoreModelCopyWithImpl(
      _$_PlayerScoreModel _value, $Res Function(_$_PlayerScoreModel) _then)
      : super(_value, (v) => _then(v as _$_PlayerScoreModel));

  @override
  _$_PlayerScoreModel get _value => super._value as _$_PlayerScoreModel;

  @override
  $Res call({
    Object? playerModel = freezed,
    Object? gameCount = freezed,
    Object? winRate = freezed,
  }) {
    return _then(_$_PlayerScoreModel(
      playerModel: playerModel == freezed
          ? _value.playerModel
          : playerModel // ignore: cast_nullable_to_non_nullable
              as PlayerModel,
      gameCount: gameCount == freezed
          ? _value.gameCount
          : gameCount // ignore: cast_nullable_to_non_nullable
              as int,
      winRate: winRate == freezed
          ? _value.winRate
          : winRate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlayerScoreModel implements _PlayerScoreModel {
  _$_PlayerScoreModel(
      {required this.playerModel, this.gameCount = 0, this.winRate = '0%'});

  @override
  final PlayerModel playerModel;
  @override
  @JsonKey()
  final int gameCount;
  @override
  @JsonKey()
  final String winRate;

  @override
  String toString() {
    return 'PlayerScoreModel(playerModel: $playerModel, gameCount: $gameCount, winRate: $winRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerScoreModel &&
            const DeepCollectionEquality()
                .equals(other.playerModel, playerModel) &&
            const DeepCollectionEquality().equals(other.gameCount, gameCount) &&
            const DeepCollectionEquality().equals(other.winRate, winRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(playerModel),
      const DeepCollectionEquality().hash(gameCount),
      const DeepCollectionEquality().hash(winRate));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerScoreModelCopyWith<_$_PlayerScoreModel> get copyWith =>
      __$$_PlayerScoreModelCopyWithImpl<_$_PlayerScoreModel>(this, _$identity);
}

abstract class _PlayerScoreModel implements PlayerScoreModel {
  factory _PlayerScoreModel(
      {required final PlayerModel playerModel,
      final int gameCount,
      final String winRate}) = _$_PlayerScoreModel;

  @override
  PlayerModel get playerModel;
  @override
  int get gameCount;
  @override
  String get winRate;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerScoreModelCopyWith<_$_PlayerScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}
