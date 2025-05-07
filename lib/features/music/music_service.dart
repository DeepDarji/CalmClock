import 'package:audioplayers/audioplayers.dart';

class MusicService {
  final AudioPlayer _player = AudioPlayer();

  Future<void> playMusic(String filename) async {
    await _player.stop();
    await _player.play(AssetSource('music/$filename'));
  }

  Future<void> stopMusic() async {
    await _player.stop();
  }
}