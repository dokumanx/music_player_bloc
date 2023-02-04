import 'package:music_player_bloc/features/play_music/constants.dart';
import 'package:music_player_bloc/features/play_music/models/playlist.dart';

abstract class IPlaylistRepository {
  Future<Playlist> getPlaylist();
}

class PlaylistRepository implements IPlaylistRepository {
  @override
  Future<Playlist> getPlaylist() {
    return Future.delayed(
      const Duration(seconds: 1),
      () => popularSongs,
    );
  }
}
