import 'package:flutter/material.dart';
import 'package:music_player_bloc/features/play_music/playlist_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Playlist'),
        ),
        body: const PlaylistPage(),
      ),
    );
  }
}
