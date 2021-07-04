import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      playSound(1);
                    },
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.orange),
                    onPressed: () {
                      playSound(2);
                    },
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                    onPressed: () {
                      playSound(3);
                    },
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      playSound(4);
                    },
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.teal),
                    onPressed: () {
                      playSound(5);
                    },
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      playSound(6);
                    },
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.purple),
                    onPressed: () {
                      playSound(7);
                    },
                    child: null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
