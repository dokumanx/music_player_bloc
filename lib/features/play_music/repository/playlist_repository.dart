import 'package:music_player_bloc/features/play_music/constants.dart';
import 'package:music_player_bloc/features/play_music/models/playlist.dart';

abstract class IPlaylistRepository {
  Playlist getPlaylist();
}

class PlaylistRepository implements IPlaylistRepository {
  @override
  Playlist getPlaylist() {
    return popularSongs;
  }
}
