import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Tile extends StatelessWidget {
  final int noteNum;
  final Color color;

  const Tile({Key key, @required this.noteNum, @required this.color})
      : super(key: key);

  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(noteNum);
        },
        child: null,
      ),
    );
  }
}
