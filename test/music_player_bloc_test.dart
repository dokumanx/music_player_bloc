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
  late MusicPlayerState state;

  setUp(() {
    mockRepository = MockPlaylistRepository();
    trackTimer = MockTrackTimer();

    when(mockRepository.getPlaylist()).thenAnswer(
      (_) async => blues90s,
    );

    musicPlayerBloc = MusicPlayerBloc(
      playlistRepository: mockRepository,
      trackTimer: trackTimer,
    );

    state = const MusicPlayerState(
      playlist: blues90s,
      currentTime: Duration.zero,
      currentTrackIndex: 0,
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
      skip: 1,
      expect: () => <MusicPlayerState>[
        state.copyWith(
          status: PlayerStatus.loading,
        ),
        state.copyWith(
          status: PlayerStatus.playing,
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
      seed: () => state.copyWith(
        status: PlayerStatus.playing,
        currentTime: const Duration(seconds: 15),
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.pause()),
      expect: () => <MusicPlayerState>[
        state.copyWith(
          status: PlayerStatus.paused,
          currentTime: const Duration(seconds: 15),
        ),
      ],
    );

    blocTest(
      'Resume paused track',
      build: () => musicPlayerBloc,
      setUp: () {
        when(trackTimer.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => const Duration(seconds: 15));
      },
      seed: () => state.copyWith(
        status: PlayerStatus.paused,
        currentTime: const Duration(seconds: 15),
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.resume()),
      expect: () => <MusicPlayerState>[
        state.copyWith(
          status: PlayerStatus.playing,
          currentTime: const Duration(seconds: 15),
        ),
      ],
    );

    blocTest(
      'Skip next track',
      build: () => musicPlayerBloc,
      setUp: () {
        when(trackTimer.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => const Duration(seconds: 0));
      },
      seed: () => state.copyWith(
        status: PlayerStatus.playing,
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.next()),
      wait: const Duration(milliseconds: 200),
      expect: () => <MusicPlayerState>[
        state.copyWith(
          status: PlayerStatus.loading,
        ),
        state.copyWith(
          status: PlayerStatus.playing,
          currentTrackIndex: 1,
          currentTime: const Duration(seconds: 0),
        ),
      ],
    );

    blocTest(
      'Skip to the next track while there is no remaining track',
      build: () => musicPlayerBloc,
      setUp: () {
        when(trackTimer.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => const Duration(seconds: 0));
      },
      seed: () => state.copyWith(
        status: PlayerStatus.playing,
        currentTrackIndex: blues90s.tracks.length - 1,
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.next()),
      expect: () => <MusicPlayerState>[
        state.copyWith(
          status: PlayerStatus.stopped,
          currentTrackIndex: blues90s.tracks.length - 1,
        ),
      ],
    );

    blocTest(
      'Skip to the previous track',
      build: () => musicPlayerBloc,
      setUp: () {
        when(trackTimer.passedTime(trackDuration: anyNamed('trackDuration')))
            .thenAnswer((_) => Duration.zero);
      },
      seed: () => state.copyWith(
        status: PlayerStatus.playing,
        currentTime: const Duration(seconds: 10),
        currentTrackIndex: 5,
      ),
      act: (bloc) => bloc.add(const MusicPlayerEvent.previous()),
      wait: const Duration(milliseconds: 200),
      expect: () => <MusicPlayerState>[
        state.copyWith(
          status: PlayerStatus.loading,
          currentTime: const Duration(seconds: 10),
          currentTrackIndex: 5,
        ),
        state.copyWith(
          status: PlayerStatus.playing,
          currentTime: const Duration(seconds: 0),
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
      seed: () => state.copyWith(status: PlayerStatus.playing),
      act: (bloc) => bloc.add(const MusicPlayerEvent.previous()),
      // Because it emits the same state, we don't expect anything
      expect: () => <MusicPlayerState>[],
    );
  });
}
