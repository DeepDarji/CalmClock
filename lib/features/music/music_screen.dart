import 'package:flutter/material.dart';
import '../../core/constants.dart';
import 'music_service.dart';

class MusicScreen extends StatelessWidget {
  final MusicService musicService;
  const MusicScreen({required this.musicService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose Music")),
      body: ListView.builder(
        itemCount: Constants.musicTracks.length,
        itemBuilder: (context, index) {
          final track = Constants.musicTracks[index];
          return ListTile(
            title: Text(track.replaceAll('.mp3', '')),
            onTap: () => musicService.playMusic(track),
          );
        },
      ),
    );
  }
}