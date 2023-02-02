part of 'music_player_bloc.dart';

@freezed
class MusicPlayerEvent with _$MusicPlayerEvent {
  const factory MusicPlayerEvent.play({@Default(0) int index}) =
      PlayMusicPlayer;

  const factory MusicPlayerEvent.pause() = PauseMusicPlayer;

  const factory MusicPlayerEvent.resume() = ResumeMusicPlayer;

  const factory MusicPlayerEvent.next() = NextMusicPlayer;

  const factory MusicPlayerEvent.previous() = PreviousMusicPlayer;
}
