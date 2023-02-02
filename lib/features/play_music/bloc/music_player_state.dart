part of 'music_player_bloc.dart';

@freezed
class MusicPlayerState with _$MusicPlayerState {
  const factory MusicPlayerState.initial() = Initial;

  const factory MusicPlayerState.loading() = Loading;

  const factory MusicPlayerState.playing({
    required Track track,
    required Duration currentTime,
    required int currentTrackIndex,
  }) = Playing;

  const factory MusicPlayerState.paused({
    required Track track,
    required Duration lastTime,
    required int currentTrackIndex,
  }) = Paused;

  const factory MusicPlayerState.stopped() = Stopped;

  const factory MusicPlayerState.error() = Error;
}
