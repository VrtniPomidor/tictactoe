// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'games_page_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GamesPageWrapper _$GamesPageWrapperFromJson(Map<String, dynamic> json) {
  return _GamesPageWrapper.fromJson(json);
}

/// @nodoc
mixin _$GamesPageWrapper {
  int get count => throw _privateConstructorUsedError;
  List<GameResponse> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamesPageWrapperCopyWith<GamesPageWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesPageWrapperCopyWith<$Res> {
  factory $GamesPageWrapperCopyWith(
          GamesPageWrapper value, $Res Function(GamesPageWrapper) then) =
      _$GamesPageWrapperCopyWithImpl<$Res>;
  $Res call({int count, List<GameResponse> results});
}

/// @nodoc
class _$GamesPageWrapperCopyWithImpl<$Res>
    implements $GamesPageWrapperCopyWith<$Res> {
  _$GamesPageWrapperCopyWithImpl(this._value, this._then);

  final GamesPageWrapper _value;
  // ignore: unused_field
  final $Res Function(GamesPageWrapper) _then;

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
              as List<GameResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_GamesPageWrapperCopyWith<$Res>
    implements $GamesPageWrapperCopyWith<$Res> {
  factory _$$_GamesPageWrapperCopyWith(
          _$_GamesPageWrapper value, $Res Function(_$_GamesPageWrapper) then) =
      __$$_GamesPageWrapperCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<GameResponse> results});
}

/// @nodoc
class __$$_GamesPageWrapperCopyWithImpl<$Res>
    extends _$GamesPageWrapperCopyWithImpl<$Res>
    implements _$$_GamesPageWrapperCopyWith<$Res> {
  __$$_GamesPageWrapperCopyWithImpl(
      _$_GamesPageWrapper _value, $Res Function(_$_GamesPageWrapper) _then)
      : super(_value, (v) => _then(v as _$_GamesPageWrapper));

  @override
  _$_GamesPageWrapper get _value => super._value as _$_GamesPageWrapper;

  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_GamesPageWrapper(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GameResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GamesPageWrapper implements _GamesPageWrapper {
  _$_GamesPageWrapper(
      {required this.count, required final List<GameResponse> results})
      : _results = results;

  factory _$_GamesPageWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_GamesPageWrapperFromJson(json);

  @override
  final int count;
  final List<GameResponse> _results;
  @override
  List<GameResponse> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GamesPageWrapper(count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GamesPageWrapper &&
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
  _$$_GamesPageWrapperCopyWith<_$_GamesPageWrapper> get copyWith =>
      __$$_GamesPageWrapperCopyWithImpl<_$_GamesPageWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GamesPageWrapperToJson(this);
  }
}

abstract class _GamesPageWrapper implements GamesPageWrapper {
  factory _GamesPageWrapper(
      {required final int count,
      required final List<GameResponse> results}) = _$_GamesPageWrapper;

  factory _GamesPageWrapper.fromJson(Map<String, dynamic> json) =
      _$_GamesPageWrapper.fromJson;

  @override
  int get count;
  @override
  List<GameResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$_GamesPageWrapperCopyWith<_$_GamesPageWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
