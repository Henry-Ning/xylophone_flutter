import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
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
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                   playSound(1);
                  },
                  child: Text('1'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text('2'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(3);
                  },
                  color: Colors.yellow,
                  child: Text('3'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(4);
                  },
                  color: Colors.green,
                  child: Text('4'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(5);
                  },
                  color: Colors.teal,
                  child: Text('5'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(6);
                  },
                  color: Colors.blue,
                  child: Text('6'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(7);
                  },
                  color: Colors.purple,
                  child: Text('7'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
