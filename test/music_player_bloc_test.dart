import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:music_player_bloc/features/play_music/bloc/music_player_bloc.dart';
import 'package:music_player_bloc/features/play_music/core/track_timer.dart';
import 'package:music_player_bloc/features/play_music/repository/playlist_repository.dart';

import 'constants.dart';
@GenerateNiceMocks([
  MockSpec<IPlaylistRepository>(as: #MockPlaylistRepository),
  MockSpec<TrackTimer>(as: #MockTrackTimer)
])
import 'music_player_bloc_test.mocks.dart';

void main() {
  late MockPlaylistRepository mockRepository;
  late MockTrackTimer trackTimer;
  late MusicPlayerBloc musicPlayerBloc;

  setUp(() {
    mockRepository = MockPlaylistRepository();
    trackTimer = MockTrackTimer();

    when(mockRepository.getPlaylist()).thenAnswer(
      (_) => blues90s,
    );

    musicPlayerBloc = MusicPlayerBloc(
      playlistRepository: mockRepository,
      trackTimer: trackTimer,
    );
  });

  group('Test each music player event', () {
    blocTest<MusicPlayerBloc, MusicPlayerState>(
      'Play the first track',
      build: () => musicPlayerBloc,
      setUp: () {
        when(trackTimer.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => const Duration(seconds: 0));
      },
      act: (bloc) => bloc.add(const MusicPlayerEvent.play()),
      expect: () => <MusicPlayerState>[
        MusicPlayerState.playing(
          track: blues90s.tracks.first,
          currentTime: Duration.zero,
          currentTrackIndex: 0,
        ),
      ],
    );

    blocTest(
      'Pause a track',
      build: () => musicPlayerBloc,
      setUp: () {
        when(trackTimer.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => const Duration(seconds: 15));
      },
      seed: () => MusicPlayerState.playing(
        track: blues90s.tracks.first,
        currentTime: const Duration(seconds: 15),
        currentTrackIndex: 0,
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.pause()),
      expect: () => <MusicPlayerState>[
        MusicPlayerState.paused(
          track: blues90s.tracks.first,
          lastTime: const Duration(seconds: 15),
          currentTrackIndex: 0,
        )
      ],
    );

    blocTest(
      'Resume paused track',
      build: () => musicPlayerBloc,
      setUp: () {
        when(trackTimer.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => const Duration(seconds: 15));
      },
      seed: () => MusicPlayerState.paused(
        track: blues90s.tracks.first,
        lastTime: const Duration(seconds: 15),
        currentTrackIndex: 0,
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.resume()),
      expect: () => <MusicPlayerState>[
        MusicPlayerState.playing(
          track: blues90s.tracks.first,
          currentTime: const Duration(seconds: 15),
          currentTrackIndex: 0,
        ),
      ],
    );

    blocTest(
      'Skip next track',
      build: () => musicPlayerBloc,
      setUp: () {
        when(trackTimer.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => const Duration(seconds: 10));
      },
      seed: () => MusicPlayerState.playing(
        track: blues90s.tracks.first,
        currentTime: const Duration(seconds: 10),
        currentTrackIndex: 0,
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.next()),
      wait: const Duration(milliseconds: 200),
      expect: () => <MusicPlayerState>[
        const MusicPlayerState.loading(),
        MusicPlayerState.playing(
          track: blues90s.tracks[1],
          currentTime: const Duration(seconds: 10),
          currentTrackIndex: 1,
        ),
      ],
    );

    blocTest(
      'Skip to the next track while there is no remaining track',
      build: () => musicPlayerBloc,
      seed: () => MusicPlayerState.playing(
        track: blues90s.tracks.last,
        currentTime:
            trackTimer.passedTime(trackDuration: blues90s.tracks.last.duration),
        currentTrackIndex: blues90s.tracks.length - 1,
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.next()),
      expect: () => <MusicPlayerState>[
        const MusicPlayerState.stopped(),
      ],
    );

    blocTest(
      'Skip to the previous track',
      build: () => musicPlayerBloc,
      setUp: () {
        when(trackTimer.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => Duration.zero);
      },
      seed: () => MusicPlayerState.playing(
        track: blues90s.tracks[5],
        currentTime: const Duration(seconds: 0),
        currentTrackIndex: 5,
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.previous()),
      wait: const Duration(milliseconds: 200),
      expect: () => <MusicPlayerState>[
        const MusicPlayerState.loading(),
        MusicPlayerState.playing(
          track: blues90s.tracks[4],
          currentTime: Duration.zero,
          currentTrackIndex: 4,
        ),
      ],
    );

    blocTest(
      'Skip to the previous track while there is no previous track',
      build: () => musicPlayerBloc,
      setUp: () {
        when(trackTimer.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => Duration.zero);
      },
      seed: () => MusicPlayerState.playing(
        track: blues90s.tracks.first,
        currentTime: Duration.zero,
        currentTrackIndex: 0,
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.previous()),
      // Because it emits the same state, we don't expect anything
      expect: () => <MusicPlayerState>[],
    );
  });
}
