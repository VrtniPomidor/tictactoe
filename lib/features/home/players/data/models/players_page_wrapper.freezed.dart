// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'players_page_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayersPageWrapper _$PlayersPageWrapperFromJson(Map<String, dynamic> json) {
  return _PlayersPageWrapper.fromJson(json);
}

/// @nodoc
mixin _$PlayersPageWrapper {
  int get count => throw _privateConstructorUsedError;
  List<PlayerResponse> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayersPageWrapperCopyWith<PlayersPageWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayersPageWrapperCopyWith<$Res> {
  factory $PlayersPageWrapperCopyWith(
          PlayersPageWrapper value, $Res Function(PlayersPageWrapper) then) =
      _$PlayersPageWrapperCopyWithImpl<$Res>;
  $Res call({int count, List<PlayerResponse> results});
}

/// @nodoc
class _$PlayersPageWrapperCopyWithImpl<$Res>
    implements $PlayersPageWrapperCopyWith<$Res> {
  _$PlayersPageWrapperCopyWithImpl(this._value, this._then);

  final PlayersPageWrapper _value;
  // ignore: unused_field
  final $Res Function(PlayersPageWrapper) _then;

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
              as List<PlayerResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayersPageWrapperCopyWith<$Res>
    implements $PlayersPageWrapperCopyWith<$Res> {
  factory _$$_PlayersPageWrapperCopyWith(_$_PlayersPageWrapper value,
          $Res Function(_$_PlayersPageWrapper) then) =
      __$$_PlayersPageWrapperCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<PlayerResponse> results});
}

/// @nodoc
class __$$_PlayersPageWrapperCopyWithImpl<$Res>
    extends _$PlayersPageWrapperCopyWithImpl<$Res>
    implements _$$_PlayersPageWrapperCopyWith<$Res> {
  __$$_PlayersPageWrapperCopyWithImpl(
      _$_PlayersPageWrapper _value, $Res Function(_$_PlayersPageWrapper) _then)
      : super(_value, (v) => _then(v as _$_PlayersPageWrapper));

  @override
  _$_PlayersPageWrapper get _value => super._value as _$_PlayersPageWrapper;

  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_PlayersPageWrapper(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PlayerResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayersPageWrapper implements _PlayersPageWrapper {
  _$_PlayersPageWrapper(
      {required this.count, required final List<PlayerResponse> results})
      : _results = results;

  factory _$_PlayersPageWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_PlayersPageWrapperFromJson(json);

  @override
  final int count;
  final List<PlayerResponse> _results;
  @override
  List<PlayerResponse> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PlayersPageWrapper(count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayersPageWrapper &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_PlayersPageWrapperCopyWith<_$_PlayersPageWrapper> get copyWith =>
      __$$_PlayersPageWrapperCopyWithImpl<_$_PlayersPageWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayersPageWrapperToJson(this);
  }
}

abstract class _PlayersPageWrapper implements PlayersPageWrapper {
  factory _PlayersPageWrapper(
      {required final int count,
      required final List<PlayerResponse> results}) = _$_PlayersPageWrapper;

  factory _PlayersPageWrapper.fromJson(Map<String, dynamic> json) =
      _$_PlayersPageWrapper.fromJson;

  @override
  int get count;
  @override
  List<PlayerResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PlayersPageWrapperCopyWith<_$_PlayersPageWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
