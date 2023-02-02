extension TrackTimeDisplay on Duration {
  String get displayTime {
    final minutes = inMinutes;
    final seconds = inSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
}
