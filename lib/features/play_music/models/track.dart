class Track {
  final String title;
  final String artist;
  final String album;
  final Duration duration;

  const Track({
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
  });

  const Track.empty()
      : this(
          title: '',
          artist: '',
          album: '',
          duration: Duration.zero,
        );
}
