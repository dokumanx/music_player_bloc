part of 'music_player_bloc.dart';

enum PlayerStatus {
  initial,
  loading,
  playing,
  paused,
  stopped,
  error,
}

@freezed
class MusicPlayerState with _$MusicPlayerState {
  const factory MusicPlayerState({
    @Default(PlayerStatus.initial) PlayerStatus status,
    @Default(Playlist(name: '', tracks: [])) Playlist playlist,
    @Default(Duration.zero) Duration currentTime,
    @Default(0) int currentTrackIndex,
  }) = Initial;
}
