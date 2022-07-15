// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tictactoe_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TictactoeState {
  GameModel? get gameModel => throw _privateConstructorUsedError;
  List<String> get displayElement => throw _privateConstructorUsedError;
  bool get isBoardBlocked => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrorScreen => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameModel? gameModel,
            List<String> displayElement,
            bool isBoardBlocked,
            bool isLoading,
            bool showErrorScreen,
            String error)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            GameModel? gameModel,
            List<String> displayElement,
            bool isBoardBlocked,
            bool isLoading,
            bool showErrorScreen,
            String error)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GameModel? gameModel,
            List<String> displayElement,
            bool isBoardBlocked,
            bool isLoading,
            bool showErrorScreen,
            String error)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TictactoeStateCopyWith<TictactoeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TictactoeStateCopyWith<$Res> {
  factory $TictactoeStateCopyWith(
          TictactoeState value, $Res Function(TictactoeState) then) =
      _$TictactoeStateCopyWithImpl<$Res>;
  $Res call(
      {GameModel? gameModel,
      List<String> displayElement,
      bool isBoardBlocked,
      bool isLoading,
      bool showErrorScreen,
      String error});

  $GameModelCopyWith<$Res>? get gameModel;
}

/// @nodoc
class _$TictactoeStateCopyWithImpl<$Res>
    implements $TictactoeStateCopyWith<$Res> {
  _$TictactoeStateCopyWithImpl(this._value, this._then);

  final TictactoeState _value;
  // ignore: unused_field
  final $Res Function(TictactoeState) _then;

  @override
  $Res call({
    Object? gameModel = freezed,
    Object? displayElement = freezed,
    Object? isBoardBlocked = freezed,
    Object? isLoading = freezed,
    Object? showErrorScreen = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      gameModel: gameModel == freezed
          ? _value.gameModel
          : gameModel // ignore: cast_nullable_to_non_nullable
              as GameModel?,
      displayElement: displayElement == freezed
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isBoardBlocked: isBoardBlocked == freezed
          ? _value.isBoardBlocked
          : isBoardBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorScreen: showErrorScreen == freezed
          ? _value.showErrorScreen
          : showErrorScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $GameModelCopyWith<$Res>? get gameModel {
    if (_value.gameModel == null) {
      return null;
    }

    return $GameModelCopyWith<$Res>(_value.gameModel!, (value) {
      return _then(_value.copyWith(gameModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TictactoeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {GameModel? gameModel,
      List<String> displayElement,
      bool isBoardBlocked,
      bool isLoading,
      bool showErrorScreen,
      String error});

  @override
  $GameModelCopyWith<$Res>? get gameModel;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$TictactoeStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? gameModel = freezed,
    Object? displayElement = freezed,
    Object? isBoardBlocked = freezed,
    Object? isLoading = freezed,
    Object? showErrorScreen = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Initial(
      gameModel: gameModel == freezed
          ? _value.gameModel
          : gameModel // ignore: cast_nullable_to_non_nullable
              as GameModel?,
      displayElement: displayElement == freezed
          ? _value._displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isBoardBlocked: isBoardBlocked == freezed
          ? _value.isBoardBlocked
          : isBoardBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorScreen: showErrorScreen == freezed
          ? _value.showErrorScreen
          : showErrorScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.gameModel,
      final List<String> displayElement = const [
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        ''
      ],
      this.isBoardBlocked = true,
      this.isLoading = false,
      this.showErrorScreen = false,
      this.error = ''})
      : _displayElement = displayElement;

  @override
  final GameModel? gameModel;
  final List<String> _displayElement;
  @override
  @JsonKey()
  List<String> get displayElement {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displayElement);
  }

  @override
  @JsonKey()
  final bool isBoardBlocked;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool showErrorScreen;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'TictactoeState.initial(gameModel: $gameModel, displayElement: $displayElement, isBoardBlocked: $isBoardBlocked, isLoading: $isLoading, showErrorScreen: $showErrorScreen, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.gameModel, gameModel) &&
            const DeepCollectionEquality()
                .equals(other._displayElement, _displayElement) &&
            const DeepCollectionEquality()
                .equals(other.isBoardBlocked, isBoardBlocked) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.showErrorScreen, showErrorScreen) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameModel),
      const DeepCollectionEquality().hash(_displayElement),
      const DeepCollectionEquality().hash(isBoardBlocked),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showErrorScreen),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameModel? gameModel,
            List<String> displayElement,
            bool isBoardBlocked,
            bool isLoading,
            bool showErrorScreen,
            String error)
        initial,
  }) {
    return initial(gameModel, displayElement, isBoardBlocked, isLoading,
        showErrorScreen, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            GameModel? gameModel,
            List<String> displayElement,
            bool isBoardBlocked,
            bool isLoading,
            bool showErrorScreen,
            String error)?
        initial,
  }) {
    return initial?.call(gameModel, displayElement, isBoardBlocked, isLoading,
        showErrorScreen, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GameModel? gameModel,
            List<String> displayElement,
            bool isBoardBlocked,
            bool isLoading,
            bool showErrorScreen,
            String error)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameModel, displayElement, isBoardBlocked, isLoading,
          showErrorScreen, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TictactoeState {
  const factory _Initial(
      {final GameModel? gameModel,
      final List<String> displayElement,
      final bool isBoardBlocked,
      final bool isLoading,
      final bool showErrorScreen,
      final String error}) = _$_Initial;

  @override
  GameModel? get gameModel;
  @override
  List<String> get displayElement;
  @override
  bool get isBoardBlocked;
  @override
  bool get isLoading;
  @override
  bool get showErrorScreen;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
