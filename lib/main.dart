import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playSound(int soundNumber) {
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
              buildButton(soundNumber: 1, color: Colors.red),
              buildButton(soundNumber: 2, color: Colors.orange),
              buildButton(soundNumber: 3, color: Colors.yellow),
              buildButton(soundNumber: 4, color: Colors.green),
              buildButton(soundNumber: 5, color: Colors.teal),
              buildButton(soundNumber: 6, color: Colors.blue),
              buildButton(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => _playSound(soundNumber),
      ),
    );
  }
}
