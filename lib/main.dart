import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded buildKey({Color colour, int noteNum}) {
    return Expanded(
      child: FlatButton(
        color: colour,
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNum.wav');
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(colour: Colors.red, noteNum: 1),
                buildKey(colour: Colors.orange, noteNum: 2),
                buildKey(colour: Colors.yellow, noteNum: 3),
                buildKey(colour: Colors.green, noteNum: 4),
                buildKey(colour: Colors.blue, noteNum: 5),
                buildKey(colour: Colors.indigo, noteNum: 6),
                buildKey(colour: Colors.purple, noteNum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
