import 'package:music_player_bloc/features/play_music/models/track.dart';

class Playlist {
  final String name;
  final List<Track> tracks;

  const Playlist({
    required this.name,
    required this.tracks,
  });
}
