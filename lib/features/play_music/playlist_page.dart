import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player_bloc/features/play_music/bloc/music_player_bloc.dart';
import 'package:music_player_bloc/features/play_music/core/track_timer.dart';
import 'package:music_player_bloc/features/play_music/models/track.dart';
import 'package:music_player_bloc/features/play_music/repository/playlist_repository.dart';
import 'package:music_player_bloc/features/play_music/widgets/track_player.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  late final TrackTimer trackTimer;
  Track? track;

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
        builder: (context) => BlocConsumer<MusicPlayerBloc, MusicPlayerState>(
          listener: (context, state) {
            if (state is Paused) {
              track = state.track;
            } else if (state is Playing) {
              track = state.track;
            }
          },
          builder: (context, state) {
            if (track == null) {
              return const Center(child: CircularProgressIndicator());
            }
            return state.maybeMap(
              loading: (value) => const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 100),
                    child: CircularProgressIndicator(),
                  )),
              orElse: () => TrackPlayer(
                timer: trackTimer,
                track: track!,
              ),
            );
          },
        ),
      ),
    );
  }
}
