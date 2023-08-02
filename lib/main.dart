import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded keyButton({Color? color, int? soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playSound(soundNumber!);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keyButton(color: Colors.orange, soundNumber: 1),
              keyButton(color: Colors.teal, soundNumber: 2),
              keyButton(color: Colors.yellow, soundNumber: 3),
              keyButton(color: Colors.green, soundNumber: 4),
              keyButton(color: Colors.red, soundNumber: 5),
              keyButton(color: Colors.blue, soundNumber: 6),
              keyButton(color: Colors.deepPurpleAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
