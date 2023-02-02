// Mocks generated by Mockito 5.3.2 from annotations
// in music_player_bloc/test/music_player_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:music_player_bloc/features/play_music/core/track_timer.dart'
    as _i4;
import 'package:music_player_bloc/features/play_music/models/playlist.dart'
    as _i2;
import 'package:music_player_bloc/features/play_music/repository/playlist_repository.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakePlaylist_0 extends _i1.SmartFake implements _i2.Playlist {
  _FakePlaylist_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDuration_1 extends _i1.SmartFake implements Duration {
  _FakeDuration_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [IPlaylistRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPlaylistRepository extends _i1.Mock
    implements _i3.IPlaylistRepository {
  @override
  _i2.Playlist getPlaylist() => (super.noSuchMethod(
        Invocation.method(
          #getPlaylist,
          [],
        ),
        returnValue: _FakePlaylist_0(
          this,
          Invocation.method(
            #getPlaylist,
            [],
          ),
        ),
        returnValueForMissingStub: _FakePlaylist_0(
          this,
          Invocation.method(
            #getPlaylist,
            [],
          ),
        ),
      ) as _i2.Playlist);
}

/// A class which mocks [TrackTimer].
///
/// See the documentation for Mockito's code generation for more information.
class MockTrackTimer extends _i1.Mock implements _i4.TrackTimer {
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void pause() => super.noSuchMethod(
        Invocation.method(
          #pause,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void resume() => super.noSuchMethod(
        Invocation.method(
          #resume,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void stop() => super.noSuchMethod(
        Invocation.method(
          #stop,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void setTrackDuration({required Duration? duration}) => super.noSuchMethod(
        Invocation.method(
          #setTrackDuration,
          [],
          {#duration: duration},
        ),
        returnValueForMissingStub: null,
      );
  @override
  Duration remainingTime({required Duration? trackDuration}) =>
      (super.noSuchMethod(
        Invocation.method(
          #remainingTime,
          [],
          {#trackDuration: trackDuration},
        ),
        returnValue: _FakeDuration_1(
          this,
          Invocation.method(
            #remainingTime,
            [],
            {#trackDuration: trackDuration},
          ),
        ),
        returnValueForMissingStub: _FakeDuration_1(
          this,
          Invocation.method(
            #remainingTime,
            [],
            {#trackDuration: trackDuration},
          ),
        ),
      ) as Duration);
  @override
  _i5.Stream<Duration> remainingTimeStream(
          {required Duration? trackDuration}) =>
      (super.noSuchMethod(
        Invocation.method(
          #remainingTimeStream,
          [],
          {#trackDuration: trackDuration},
        ),
        returnValue: _i5.Stream<Duration>.empty(),
        returnValueForMissingStub: _i5.Stream<Duration>.empty(),
      ) as _i5.Stream<Duration>);
}
