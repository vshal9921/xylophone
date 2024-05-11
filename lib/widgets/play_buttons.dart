import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {

  final MaterialColor color;
  final int audioId;

  const PlayButton(this.color, this.audioId, {super.key});

  void playAudio() {
    final player = AudioPlayer();
    player.play(AssetSource('note$audioId.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
        onPressed: () {
          playAudio();
        },
        child: const Text(''),
      ),
    );
  }
}
