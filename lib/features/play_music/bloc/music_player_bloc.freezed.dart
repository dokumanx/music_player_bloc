// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MusicPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayMusicPlayer value) play,
    required TResult Function(PauseMusicPlayer value) pause,
    required TResult Function(ResumeMusicPlayer value) resume,
    required TResult Function(NextMusicPlayer value) next,
    required TResult Function(PreviousMusicPlayer value) previous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayMusicPlayer value)? play,
    TResult? Function(PauseMusicPlayer value)? pause,
    TResult? Function(ResumeMusicPlayer value)? resume,
    TResult? Function(NextMusicPlayer value)? next,
    TResult? Function(PreviousMusicPlayer value)? previous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayMusicPlayer value)? play,
    TResult Function(PauseMusicPlayer value)? pause,
    TResult Function(ResumeMusicPlayer value)? resume,
    TResult Function(NextMusicPlayer value)? next,
    TResult Function(PreviousMusicPlayer value)? previous,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicPlayerEventCopyWith<$Res> {
  factory $MusicPlayerEventCopyWith(
          MusicPlayerEvent value, $Res Function(MusicPlayerEvent) then) =
      _$MusicPlayerEventCopyWithImpl<$Res, MusicPlayerEvent>;
}

/// @nodoc
class _$MusicPlayerEventCopyWithImpl<$Res, $Val extends MusicPlayerEvent>
    implements $MusicPlayerEventCopyWith<$Res> {
  _$MusicPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlayMusicPlayerCopyWith<$Res> {
  factory _$$PlayMusicPlayerCopyWith(
          _$PlayMusicPlayer value, $Res Function(_$PlayMusicPlayer) then) =
      __$$PlayMusicPlayerCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$PlayMusicPlayerCopyWithImpl<$Res>
    extends _$MusicPlayerEventCopyWithImpl<$Res, _$PlayMusicPlayer>
    implements _$$PlayMusicPlayerCopyWith<$Res> {
  __$$PlayMusicPlayerCopyWithImpl(
      _$PlayMusicPlayer _value, $Res Function(_$PlayMusicPlayer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$PlayMusicPlayer(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayMusicPlayer
    with DiagnosticableTreeMixin
    implements PlayMusicPlayer {
  const _$PlayMusicPlayer({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerEvent.play(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MusicPlayerEvent.play'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayMusicPlayer &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayMusicPlayerCopyWith<_$PlayMusicPlayer> get copyWith =>
      __$$PlayMusicPlayerCopyWithImpl<_$PlayMusicPlayer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) {
    return play(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) {
    return play?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayMusicPlayer value) play,
    required TResult Function(PauseMusicPlayer value) pause,
    required TResult Function(ResumeMusicPlayer value) resume,
    required TResult Function(NextMusicPlayer value) next,
    required TResult Function(PreviousMusicPlayer value) previous,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayMusicPlayer value)? play,
    TResult? Function(PauseMusicPlayer value)? pause,
    TResult? Function(ResumeMusicPlayer value)? resume,
    TResult? Function(NextMusicPlayer value)? next,
    TResult? Function(PreviousMusicPlayer value)? previous,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayMusicPlayer value)? play,
    TResult Function(PauseMusicPlayer value)? pause,
    TResult Function(ResumeMusicPlayer value)? resume,
    TResult Function(NextMusicPlayer value)? next,
    TResult Function(PreviousMusicPlayer value)? previous,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class PlayMusicPlayer implements MusicPlayerEvent {
  const factory PlayMusicPlayer({final int index}) = _$PlayMusicPlayer;

  int get index;
  @JsonKey(ignore: true)
  _$$PlayMusicPlayerCopyWith<_$PlayMusicPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseMusicPlayerCopyWith<$Res> {
  factory _$$PauseMusicPlayerCopyWith(
          _$PauseMusicPlayer value, $Res Function(_$PauseMusicPlayer) then) =
      __$$PauseMusicPlayerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseMusicPlayerCopyWithImpl<$Res>
    extends _$MusicPlayerEventCopyWithImpl<$Res, _$PauseMusicPlayer>
    implements _$$PauseMusicPlayerCopyWith<$Res> {
  __$$PauseMusicPlayerCopyWithImpl(
      _$PauseMusicPlayer _value, $Res Function(_$PauseMusicPlayer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseMusicPlayer
    with DiagnosticableTreeMixin
    implements PauseMusicPlayer {
  const _$PauseMusicPlayer();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerEvent.pause()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MusicPlayerEvent.pause'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseMusicPlayer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayMusicPlayer value) play,
    required TResult Function(PauseMusicPlayer value) pause,
    required TResult Function(ResumeMusicPlayer value) resume,
    required TResult Function(NextMusicPlayer value) next,
    required TResult Function(PreviousMusicPlayer value) previous,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayMusicPlayer value)? play,
    TResult? Function(PauseMusicPlayer value)? pause,
    TResult? Function(ResumeMusicPlayer value)? resume,
    TResult? Function(NextMusicPlayer value)? next,
    TResult? Function(PreviousMusicPlayer value)? previous,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayMusicPlayer value)? play,
    TResult Function(PauseMusicPlayer value)? pause,
    TResult Function(ResumeMusicPlayer value)? resume,
    TResult Function(NextMusicPlayer value)? next,
    TResult Function(PreviousMusicPlayer value)? previous,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class PauseMusicPlayer implements MusicPlayerEvent {
  const factory PauseMusicPlayer() = _$PauseMusicPlayer;
}

/// @nodoc
abstract class _$$ResumeMusicPlayerCopyWith<$Res> {
  factory _$$ResumeMusicPlayerCopyWith(
          _$ResumeMusicPlayer value, $Res Function(_$ResumeMusicPlayer) then) =
      __$$ResumeMusicPlayerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumeMusicPlayerCopyWithImpl<$Res>
    extends _$MusicPlayerEventCopyWithImpl<$Res, _$ResumeMusicPlayer>
    implements _$$ResumeMusicPlayerCopyWith<$Res> {
  __$$ResumeMusicPlayerCopyWithImpl(
      _$ResumeMusicPlayer _value, $Res Function(_$ResumeMusicPlayer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResumeMusicPlayer
    with DiagnosticableTreeMixin
    implements ResumeMusicPlayer {
  const _$ResumeMusicPlayer();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerEvent.resume()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MusicPlayerEvent.resume'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumeMusicPlayer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) {
    return resume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayMusicPlayer value) play,
    required TResult Function(PauseMusicPlayer value) pause,
    required TResult Function(ResumeMusicPlayer value) resume,
    required TResult Function(NextMusicPlayer value) next,
    required TResult Function(PreviousMusicPlayer value) previous,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayMusicPlayer value)? play,
    TResult? Function(PauseMusicPlayer value)? pause,
    TResult? Function(ResumeMusicPlayer value)? resume,
    TResult? Function(NextMusicPlayer value)? next,
    TResult? Function(PreviousMusicPlayer value)? previous,
  }) {
    return resume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayMusicPlayer value)? play,
    TResult Function(PauseMusicPlayer value)? pause,
    TResult Function(ResumeMusicPlayer value)? resume,
    TResult Function(NextMusicPlayer value)? next,
    TResult Function(PreviousMusicPlayer value)? previous,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class ResumeMusicPlayer implements MusicPlayerEvent {
  const factory ResumeMusicPlayer() = _$ResumeMusicPlayer;
}

/// @nodoc
abstract class _$$NextMusicPlayerCopyWith<$Res> {
  factory _$$NextMusicPlayerCopyWith(
          _$NextMusicPlayer value, $Res Function(_$NextMusicPlayer) then) =
      __$$NextMusicPlayerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextMusicPlayerCopyWithImpl<$Res>
    extends _$MusicPlayerEventCopyWithImpl<$Res, _$NextMusicPlayer>
    implements _$$NextMusicPlayerCopyWith<$Res> {
  __$$NextMusicPlayerCopyWithImpl(
      _$NextMusicPlayer _value, $Res Function(_$NextMusicPlayer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextMusicPlayer
    with DiagnosticableTreeMixin
    implements NextMusicPlayer {
  const _$NextMusicPlayer();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerEvent.next()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MusicPlayerEvent.next'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextMusicPlayer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) {
    return next?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayMusicPlayer value) play,
    required TResult Function(PauseMusicPlayer value) pause,
    required TResult Function(ResumeMusicPlayer value) resume,
    required TResult Function(NextMusicPlayer value) next,
    required TResult Function(PreviousMusicPlayer value) previous,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayMusicPlayer value)? play,
    TResult? Function(PauseMusicPlayer value)? pause,
    TResult? Function(ResumeMusicPlayer value)? resume,
    TResult? Function(NextMusicPlayer value)? next,
    TResult? Function(PreviousMusicPlayer value)? previous,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayMusicPlayer value)? play,
    TResult Function(PauseMusicPlayer value)? pause,
    TResult Function(ResumeMusicPlayer value)? resume,
    TResult Function(NextMusicPlayer value)? next,
    TResult Function(PreviousMusicPlayer value)? previous,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class NextMusicPlayer implements MusicPlayerEvent {
  const factory NextMusicPlayer() = _$NextMusicPlayer;
}

/// @nodoc
abstract class _$$PreviousMusicPlayerCopyWith<$Res> {
  factory _$$PreviousMusicPlayerCopyWith(_$PreviousMusicPlayer value,
          $Res Function(_$PreviousMusicPlayer) then) =
      __$$PreviousMusicPlayerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousMusicPlayerCopyWithImpl<$Res>
    extends _$MusicPlayerEventCopyWithImpl<$Res, _$PreviousMusicPlayer>
    implements _$$PreviousMusicPlayerCopyWith<$Res> {
  __$$PreviousMusicPlayerCopyWithImpl(
      _$PreviousMusicPlayer _value, $Res Function(_$PreviousMusicPlayer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreviousMusicPlayer
    with DiagnosticableTreeMixin
    implements PreviousMusicPlayer {
  const _$PreviousMusicPlayer();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerEvent.previous()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MusicPlayerEvent.previous'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreviousMusicPlayer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) {
    return previous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) {
    return previous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
    required TResult orElse(),
  }) {
    if (previous != null) {
      return previous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayMusicPlayer value) play,
    required TResult Function(PauseMusicPlayer value) pause,
    required TResult Function(ResumeMusicPlayer value) resume,
    required TResult Function(NextMusicPlayer value) next,
    required TResult Function(PreviousMusicPlayer value) previous,
  }) {
    return previous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayMusicPlayer value)? play,
    TResult? Function(PauseMusicPlayer value)? pause,
    TResult? Function(ResumeMusicPlayer value)? resume,
    TResult? Function(NextMusicPlayer value)? next,
    TResult? Function(PreviousMusicPlayer value)? previous,
  }) {
    return previous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayMusicPlayer value)? play,
    TResult Function(PauseMusicPlayer value)? pause,
    TResult Function(ResumeMusicPlayer value)? resume,
    TResult Function(NextMusicPlayer value)? next,
    TResult Function(PreviousMusicPlayer value)? previous,
    required TResult orElse(),
  }) {
    if (previous != null) {
      return previous(this);
    }
    return orElse();
  }
}

abstract class PreviousMusicPlayer implements MusicPlayerEvent {
  const factory PreviousMusicPlayer() = _$PreviousMusicPlayer;
}

/// @nodoc
mixin _$MusicPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Track track, Duration currentTime, int currentTrackIndex)
        playing,
    required TResult Function(
            Track track, Duration lastTime, int currentTrackIndex)
        paused,
    required TResult Function() stopped,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult? Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult? Function()? stopped,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult Function()? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Stopped value) stopped,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Stopped value)? stopped,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Stopped value)? stopped,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicPlayerStateCopyWith<$Res> {
  factory $MusicPlayerStateCopyWith(
          MusicPlayerState value, $Res Function(MusicPlayerState) then) =
      _$MusicPlayerStateCopyWithImpl<$Res, MusicPlayerState>;
}

/// @nodoc
class _$MusicPlayerStateCopyWithImpl<$Res, $Val extends MusicPlayerState>
    implements $MusicPlayerStateCopyWith<$Res> {
  _$MusicPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MusicPlayerState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Track track, Duration currentTime, int currentTrackIndex)
        playing,
    required TResult Function(
            Track track, Duration lastTime, int currentTrackIndex)
        paused,
    required TResult Function() stopped,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult? Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult? Function()? stopped,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult Function()? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Stopped value) stopped,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Stopped value)? stopped,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Stopped value)? stopped,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MusicPlayerState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MusicPlayerState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Track track, Duration currentTime, int currentTrackIndex)
        playing,
    required TResult Function(
            Track track, Duration lastTime, int currentTrackIndex)
        paused,
    required TResult Function() stopped,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult? Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult? Function()? stopped,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult Function()? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Stopped value) stopped,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Stopped value)? stopped,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Stopped value)? stopped,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MusicPlayerState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$PlayingCopyWith<$Res> {
  factory _$$PlayingCopyWith(_$Playing value, $Res Function(_$Playing) then) =
      __$$PlayingCopyWithImpl<$Res>;
  @useResult
  $Res call({Track track, Duration currentTime, int currentTrackIndex});
}

/// @nodoc
class __$$PlayingCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res, _$Playing>
    implements _$$PlayingCopyWith<$Res> {
  __$$PlayingCopyWithImpl(_$Playing _value, $Res Function(_$Playing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
    Object? currentTime = null,
    Object? currentTrackIndex = null,
  }) {
    return _then(_$Playing(
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      currentTrackIndex: null == currentTrackIndex
          ? _value.currentTrackIndex
          : currentTrackIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Playing with DiagnosticableTreeMixin implements Playing {
  const _$Playing(
      {required this.track,
      required this.currentTime,
      required this.currentTrackIndex});

  @override
  final Track track;
  @override
  final Duration currentTime;
  @override
  final int currentTrackIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerState.playing(track: $track, currentTime: $currentTime, currentTrackIndex: $currentTrackIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MusicPlayerState.playing'))
      ..add(DiagnosticsProperty('track', track))
      ..add(DiagnosticsProperty('currentTime', currentTime))
      ..add(DiagnosticsProperty('currentTrackIndex', currentTrackIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Playing &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.currentTrackIndex, currentTrackIndex) ||
                other.currentTrackIndex == currentTrackIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, track, currentTime, currentTrackIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayingCopyWith<_$Playing> get copyWith =>
      __$$PlayingCopyWithImpl<_$Playing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Track track, Duration currentTime, int currentTrackIndex)
        playing,
    required TResult Function(
            Track track, Duration lastTime, int currentTrackIndex)
        paused,
    required TResult Function() stopped,
    required TResult Function() error,
  }) {
    return playing(track, currentTime, currentTrackIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult? Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult? Function()? stopped,
    TResult? Function()? error,
  }) {
    return playing?.call(track, currentTime, currentTrackIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult Function()? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(track, currentTime, currentTrackIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Stopped value) stopped,
    required TResult Function(Error value) error,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Stopped value)? stopped,
    TResult? Function(Error value)? error,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Stopped value)? stopped,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class Playing implements MusicPlayerState {
  const factory Playing(
      {required final Track track,
      required final Duration currentTime,
      required final int currentTrackIndex}) = _$Playing;

  Track get track;
  Duration get currentTime;
  int get currentTrackIndex;
  @JsonKey(ignore: true)
  _$$PlayingCopyWith<_$Playing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PausedCopyWith<$Res> {
  factory _$$PausedCopyWith(_$Paused value, $Res Function(_$Paused) then) =
      __$$PausedCopyWithImpl<$Res>;
  @useResult
  $Res call({Track track, Duration lastTime, int currentTrackIndex});
}

/// @nodoc
class __$$PausedCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res, _$Paused>
    implements _$$PausedCopyWith<$Res> {
  __$$PausedCopyWithImpl(_$Paused _value, $Res Function(_$Paused) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
    Object? lastTime = null,
    Object? currentTrackIndex = null,
  }) {
    return _then(_$Paused(
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
      lastTime: null == lastTime
          ? _value.lastTime
          : lastTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      currentTrackIndex: null == currentTrackIndex
          ? _value.currentTrackIndex
          : currentTrackIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Paused with DiagnosticableTreeMixin implements Paused {
  const _$Paused(
      {required this.track,
      required this.lastTime,
      required this.currentTrackIndex});

  @override
  final Track track;
  @override
  final Duration lastTime;
  @override
  final int currentTrackIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerState.paused(track: $track, lastTime: $lastTime, currentTrackIndex: $currentTrackIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MusicPlayerState.paused'))
      ..add(DiagnosticsProperty('track', track))
      ..add(DiagnosticsProperty('lastTime', lastTime))
      ..add(DiagnosticsProperty('currentTrackIndex', currentTrackIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Paused &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.lastTime, lastTime) ||
                other.lastTime == lastTime) &&
            (identical(other.currentTrackIndex, currentTrackIndex) ||
                other.currentTrackIndex == currentTrackIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, track, lastTime, currentTrackIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PausedCopyWith<_$Paused> get copyWith =>
      __$$PausedCopyWithImpl<_$Paused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Track track, Duration currentTime, int currentTrackIndex)
        playing,
    required TResult Function(
            Track track, Duration lastTime, int currentTrackIndex)
        paused,
    required TResult Function() stopped,
    required TResult Function() error,
  }) {
    return paused(track, lastTime, currentTrackIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult? Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult? Function()? stopped,
    TResult? Function()? error,
  }) {
    return paused?.call(track, lastTime, currentTrackIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult Function()? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(track, lastTime, currentTrackIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Stopped value) stopped,
    required TResult Function(Error value) error,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Stopped value)? stopped,
    TResult? Function(Error value)? error,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Stopped value)? stopped,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class Paused implements MusicPlayerState {
  const factory Paused(
      {required final Track track,
      required final Duration lastTime,
      required final int currentTrackIndex}) = _$Paused;

  Track get track;
  Duration get lastTime;
  int get currentTrackIndex;
  @JsonKey(ignore: true)
  _$$PausedCopyWith<_$Paused> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoppedCopyWith<$Res> {
  factory _$$StoppedCopyWith(_$Stopped value, $Res Function(_$Stopped) then) =
      __$$StoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoppedCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res, _$Stopped>
    implements _$$StoppedCopyWith<$Res> {
  __$$StoppedCopyWithImpl(_$Stopped _value, $Res Function(_$Stopped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Stopped with DiagnosticableTreeMixin implements Stopped {
  const _$Stopped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerState.stopped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MusicPlayerState.stopped'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Stopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Track track, Duration currentTime, int currentTrackIndex)
        playing,
    required TResult Function(
            Track track, Duration lastTime, int currentTrackIndex)
        paused,
    required TResult Function() stopped,
    required TResult Function() error,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult? Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult? Function()? stopped,
    TResult? Function()? error,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult Function()? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Stopped value) stopped,
    required TResult Function(Error value) error,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Stopped value)? stopped,
    TResult? Function(Error value)? error,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Stopped value)? stopped,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class Stopped implements MusicPlayerState {
  const factory Stopped() = _$Stopped;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MusicPlayerState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MusicPlayerState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Track track, Duration currentTime, int currentTrackIndex)
        playing,
    required TResult Function(
            Track track, Duration lastTime, int currentTrackIndex)
        paused,
    required TResult Function() stopped,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult? Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult? Function()? stopped,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Track track, Duration currentTime, int currentTrackIndex)?
        playing,
    TResult Function(Track track, Duration lastTime, int currentTrackIndex)?
        paused,
    TResult Function()? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Stopped value) stopped,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Stopped value)? stopped,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Stopped value)? stopped,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements MusicPlayerState {
  const factory Error() = _$Error;
}
