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

  MusicPlayerBloc({
    required this.playlistRepository,
    required this.trackTimer,
  }) : super(const MusicPlayerState()) {
    on<MusicPlayerEvent>((events, emit) async {
      await events.map(
        play: (event) async => await _play(event, emit),
        pause: (_) async => await _pause(emit),
        resume: (_) async => await _resume(emit),
        next: (_) async => await _next(emit),
        previous: (_) async => await _previous(emit),
      );
    });
  }

  _play(PlayMusicPlayer event, Emitter<MusicPlayerState> emit) async {
    if (state.playlist.tracks.isEmpty) {
      emit(state.copyWith(status: PlayerStatus.loading));

      final playList = await playlistRepository.getPlaylist();
      emit(state.copyWith(playlist: playList));
    }

    final currentTrack = state.playlist.tracks[event.index];

    trackTimer.setTrackDuration(duration: currentTrack.duration);

    emit(state.copyWith(
      status: PlayerStatus.playing,
      currentTrackIndex: event.index,
      currentTime: Duration.zero,
    ));
  }

  _pause(Emitter<MusicPlayerState> emit) {
    trackTimer.pause();

    emit(state.copyWith(
      status: PlayerStatus.paused,
      currentTime: trackTimer.passedTime(trackDuration: currentTrack.duration),
    ));
  }

  _resume(Emitter<MusicPlayerState> emit) {
    trackTimer.resume();

    emit(state.copyWith(
      status: PlayerStatus.playing,
      currentTime: trackTimer.passedTime(trackDuration: currentTrack.duration),
    ));
  }

  _stop(Emitter<MusicPlayerState> emit) {
    trackTimer.stop();
    emit(state.copyWith(status: PlayerStatus.stopped));
  }

  Future<void> _next(Emitter<MusicPlayerState> emit) async {
    if (state.status != PlayerStatus.stopped) {
      if (currentTrackIndex < state.playlist.tracks.length - 1) {
        var nextIndex = currentTrackIndex + 1;
        emit(state.copyWith(status: PlayerStatus.loading));
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
      emit(state.copyWith(status: PlayerStatus.loading));
      // Fake loading to demonstrate the loading state
      await Future.delayed(const Duration(milliseconds: 200))
          .then((_) => add(MusicPlayerEvent.play(index: previousIndex)));
    } else {
      // If we are at the first track, we just restart the current track
      add(MusicPlayerEvent.play(index: currentTrackIndex));
    }
  }

  int get currentTrackIndex => state.currentTrackIndex;

  Track get currentTrack => state.playlist.tracks[currentTrackIndex];
}
