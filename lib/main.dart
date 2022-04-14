import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int noteno) {
    final player = AudioCache();
    player.play('note$noteno.wav');
  }

  Expanded buildKey(Color color, int noteno) {
    return Expanded(
      child: Container(
        color: color,
        width: double.infinity,
        child: TextButton(
          child: Text(
            'Click Here',
            style: TextStyle(color: color),
          ),
          onPressed: () {
            playsound(noteno);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.deepOrangeAccent, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.blue, 5),
              buildKey(Colors.indigo, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
