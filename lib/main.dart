import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import "package:xylophone/widgets/tile.dart";

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Tile(
                  noteNum: 1,
                  color: Colors.red,
                ),
                Tile(
                  noteNum: 2,
                  color: Colors.orange,
                ),
                Tile(
                  noteNum: 3,
                  color: Colors.yellow,
                ),
                Tile(
                  noteNum: 4,
                  color: Colors.green,
                ),
                Tile(noteNum: 5, color: Colors.teal),
                Tile(noteNum: 6, color: Colors.blue),
                Tile(noteNum: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
