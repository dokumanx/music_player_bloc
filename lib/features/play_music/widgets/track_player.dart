import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player_bloc/extensions/track_time_display.dart';
import 'package:music_player_bloc/features/play_music/bloc/music_player_bloc.dart';
import 'package:music_player_bloc/features/play_music/core/track_timer.dart';
import 'package:music_player_bloc/features/play_music/models/track.dart';

class TrackPlayer extends StatelessWidget {
  final Track track;
  final TrackTimer timer;

  const TrackPlayer({
    super.key,
    required this.track,
    required this.timer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            track.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 4),
          Text(
            track.artist,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          StreamBuilder<Duration>(
              stream: timer.passedTimeStream(trackDuration: track.duration),
              builder: (context, snapshot) {
                if (!snapshot.hasError &&
                    snapshot.hasData &&
                    snapshot.data != null) {
                  var duration = snapshot.data!;
                  double currentTime = duration.inSeconds.toDouble();

                  if (track.duration.inSeconds == currentTime) {
                    context
                        .read<MusicPlayerBloc>()
                        .add(const MusicPlayerEvent.next());
                  }

                  return Row(
                    children: [
                      Text(
                        duration.displayTime,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Expanded(
                        child: Slider(
                          value: currentTime,
                          min: 0,
                          max: track.duration.inSeconds.toDouble(),
                          onChanged: (double value) {},
                        ),
                      ),
                      Text(
                        track.duration.displayTime,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                child: const Icon(Icons.skip_previous),
                onPressed: () {
                  context
                      .read<MusicPlayerBloc>()
                      .add(const MusicPlayerEvent.previous());
                },
              ),
              BlocBuilder<MusicPlayerBloc, MusicPlayerState>(
                builder: (context, state) {
                  return FloatingActionButton(
                    onPressed: () {
                      if (state.status == PlayerStatus.playing) {
                        context
                            .read<MusicPlayerBloc>()
                            .add(const MusicPlayerEvent.pause());
                      } else if (state.status == PlayerStatus.paused) {
                        context
                            .read<MusicPlayerBloc>()
                            .add(const MusicPlayerEvent.resume());
                      }
                    },
                    child: state.status == PlayerStatus.playing
                        ? const Icon(Icons.pause)
                        : const Icon(Icons.play_arrow),
                  );
                },
              ),
              FloatingActionButton(
                child: const Icon(Icons.skip_next),
                onPressed: () {
                  context
                      .read<MusicPlayerBloc>()
                      .add(const MusicPlayerEvent.next());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
