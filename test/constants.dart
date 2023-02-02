import 'package:music_player_bloc/features/play_music/models/playlist.dart';
import 'package:music_player_bloc/features/play_music/models/track.dart';

const List<Track> tracks = [
  Track(
    title: 'Voodoo Chile',
    artist: 'Jimi Hendrix',
    album: 'Electric Ladyland',
    duration: Duration(minutes: 15),
  ),
  Track(
    title: 'Cross Road Blues',
    artist: 'Robert Johnson',
    album: 'King of the Delta Blues Singers',
    duration: Duration(minutes: 3),
  ),
  Track(
    title: 'Sweet Home Chicago',
    artist: 'Robert Johnson',
    album: 'King of the Delta Blues Singers',
    duration: Duration(minutes: 3),
  ),
  Track(
    title: 'Mary Had a Little Lamb',
    artist: 'Stevie Ray Vaughan',
    album: 'Texas Flood',
    duration: Duration(minutes: 2),
  ),
  Track(
    title: 'The Thrill is Gone',
    artist: 'B.B. King',
    album: 'Completely Well',
    duration: Duration(minutes: 5),
  ),
  Track(
    title: 'Mustang Sally',
    artist: 'Buddy Guy',
    album: 'Stone Crazy!',
    duration: Duration(minutes: 4),
  ),
  Track(
    title: 'It Hurts Me Too',
    artist: 'Elmore James',
    album: 'King of the Slide Guitar',
    duration: Duration(minutes: 4),
  ),
  Track(
    title: 'Born Under a Bad Sign',
    artist: 'Albert King',
    album: 'Born Under a Bad Sign',
    duration: Duration(minutes: 3),
  ),
  Track(
    title: 'Hoochie Coochie Man',
    artist: 'Muddy Waters',
    album: 'Folk Singer',
    duration: Duration(minutes: 3),
  ),
  Track(
    title: 'Little Wing',
    artist: 'Jimi Hendrix',
    album: 'Axis: Bold as Love',
    duration: Duration(minutes: 2),
  ),
];

const Playlist blues90s = Playlist(
  name: '90s Blues',
  tracks: tracks,
);
