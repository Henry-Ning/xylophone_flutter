import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  buildKey({Color c, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('$soundNumber'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(c: Colors.red, soundNumber: 1),
              buildKey(c: Colors.orange, soundNumber:2),
              buildKey(c: Colors.yellow, soundNumber:3),
              buildKey(c: Colors.green, soundNumber:4),
              buildKey(c: Colors.teal, soundNumber:5),
              buildKey(c: Colors.blue, soundNumber:6),
              buildKey(c: Colors.purple, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
