import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player_bloc/features/play_music/bloc/music_player_bloc.dart';
import 'package:music_player_bloc/features/play_music/core/track_timer.dart';
import 'package:music_player_bloc/features/play_music/repository/playlist_repository.dart';
import 'package:music_player_bloc/features/play_music/widgets/track_player.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  late final TrackTimer trackTimer;

  @override
  void initState() {
    super.initState();
    trackTimer = TrackTimer();
  }

  @override
  void dispose() {
    super.dispose();
    trackTimer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MusicPlayerBloc>(
      create: (context) => MusicPlayerBloc(
        playlistRepository: PlaylistRepository(),
        trackTimer: trackTimer,
      )..add(const MusicPlayerEvent.play()),
      child: Builder(
        builder: (context) => BlocBuilder<MusicPlayerBloc, MusicPlayerState>(
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) {
            final isLoading = state.status == PlayerStatus.loading ||
                state.status == PlayerStatus.initial;

            final currentIndex = state.currentTrackIndex;
            final tracks = state.playlist.tracks;
            return isLoading
                ? const Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 100),
                      child: CircularProgressIndicator(),
                    ))
                : TrackPlayer(
                    timer: trackTimer,
                    track: tracks[currentIndex],
                  );
          },
        ),
      ),
    );
  }
}
