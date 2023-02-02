import 'package:music_player_bloc/features/play_music/models/playlist.dart';
import 'package:music_player_bloc/features/play_music/models/track.dart';

const Playlist popularSongs = Playlist(
  name: "Popular Songs",
  tracks: [
    Track(
      title: "Shape of You",
      artist: "Ed Sheeran",
      album: "÷",
      duration: Duration(minutes: 0, seconds: 5),
    ),
    Track(
      title: "Despacito",
      artist: "Luis Fonsi ft. Daddy Yankee",
      album: "Vida",
      duration: Duration(minutes: 2, seconds: 42),
    ),
    Track(
      title: "Blinding Lights",
      artist: "The Weeknd",
      album: "After Hours",
      duration: Duration(minutes: 1, seconds: 2),
    ),
    Track(
      title: "Sugar",
      artist: "Maroon 5",
      album: "V",
      duration: Duration(minutes: 2, seconds: 56),
    ),
    Track(
      title: "Bad Guy",
      artist: "Billie Eilish",
      album: "WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?",
      duration: Duration(minutes: 1, seconds: 14),
    ),
    Track(
      title: "See You Again",
      artist: "Wiz Khalifa ft. Charlie Puth",
      album: "Furious 7",
      duration: Duration(minutes: 1, seconds: 48),
    ),
    Track(
      title: "Uptown Funk",
      artist: "Mark Ronson ft. Bruno Mars",
      album: "Uptown Special",
      duration: Duration(minutes: 1, seconds: 31),
    ),
    Track(
      title: "Thriller",
      artist: "Michael Jackson",
      album: "Thriller",
      duration: Duration(minutes: 2, seconds: 57),
    ),
    Track(
      title: "Billie Jean",
      artist: "Michael Jackson",
      album: "Thriller",
      duration: Duration(minutes: 2, seconds: 54),
    ),
    Track(
      title: "Bohemian Rhapsody",
      artist: "Queen",
      album: "A Night at the Opera",
      duration: Duration(minutes: 1, seconds: 35),
    ),
  ],
);
