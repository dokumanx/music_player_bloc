import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player_bloc/features/play_music/core/track_timer.dart';
import 'package:music_player_bloc/features/play_music/models/playlist.dart';
import 'package:music_player_bloc/features/play_music/models/track.dart';
import 'package:music_player_bloc/features/play_music/repository/playlist_repository.dart';

part 'music_player_bloc.freezed.dart';
part 'music_player_event.dart';
part 'music_player_state.dart';

class MusicPlayerBloc extends Bloc<MusicPlayerEvent, MusicPlayerState> {
  final IPlaylistRepository playlistRepository;
  final TrackTimer trackTimer;

  late final Playlist _playlist;

  MusicPlayerBloc({
    required this.playlistRepository,
    required this.trackTimer,
  })  : _playlist = playlistRepository.getPlaylist(),
        super(const MusicPlayerState.initial()) {
    on<MusicPlayerEvent>((events, emit) async {
      await events.map(
        play: (event) => _play(event, emit),
        pause: (_) => _pause(emit),
        resume: (_) => _resume(emit),
        next: (_) async => await _next(emit),
        previous: (_) async => await _previous(emit),
      );
    });
  }

  _play(PlayMusicPlayer event, Emitter<MusicPlayerState> emit) {
    final track = _playlist.tracks[event.index];

    trackTimer.setTrackDuration(duration: track.duration);
    emit(MusicPlayerState.playing(
      track: track,
      currentTime: trackTimer.passedTime(trackDuration: track.duration),
      currentTrackIndex: event.index,
    ));
  }

  _pause(Emitter<MusicPlayerState> emit) {
    final track = _playlist.tracks[currentTrackIndex];

    trackTimer.pause();

    emit(MusicPlayerState.paused(
      track: track,
      lastTime: trackTimer.passedTime(trackDuration: track.duration),
      currentTrackIndex: currentTrackIndex,
    ));
  }

  _resume(Emitter<MusicPlayerState> emit) {
    final track = _playlist.tracks[currentTrackIndex];

    trackTimer.resume();

    emit(MusicPlayerState.playing(
      track: track,
      currentTime: trackTimer.passedTime(trackDuration: track.duration),
      currentTrackIndex: currentTrackIndex,
    ));
  }

  _stop(Emitter<MusicPlayerState> emit) {
    trackTimer.stop();
    emit(const MusicPlayerState.stopped());
  }

  Future<void> _next(Emitter<MusicPlayerState> emit) async {
    if (state is! Stopped) {
      if (currentTrackIndex < _playlist.tracks.length - 1) {
        var nextIndex = currentTrackIndex + 1;
        emit(const MusicPlayerState.loading());
        // Fake loading to demonstrate the loading state
        await Future.delayed(const Duration(milliseconds: 200))
            .then((_) => add(MusicPlayerEvent.play(index: nextIndex)));
      } else {
        // If we are at the end of the playlist, stop the music
        _stop(emit);
      }
    }
  }

  Future<void> _previous(Emitter<MusicPlayerState> emit) async {
    if (currentTrackIndex > 0) {
      int previousIndex = currentTrackIndex - 1;
      emit(const MusicPlayerState.loading());
      // Fake loading to demonstrate the loading state
      await Future.delayed(const Duration(milliseconds: 200))
          .then((_) => add(MusicPlayerEvent.play(index: previousIndex)));
    } else {
      // If we are at the first track, we just restart the current track
      add(MusicPlayerEvent.play(index: currentTrackIndex));
    }
  }

  int get currentTrackIndex => state.maybeMap(
        playing: (state) => state.currentTrackIndex,
        paused: (state) => state.currentTrackIndex,
        stopped: (state) => _playlist.tracks.length - 1,
        orElse: () => 0,
      );
}
