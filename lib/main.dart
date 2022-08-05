import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int sound) {
    final player = AssetsAudioPlayer();
    player.open(
      Audio('/assets/note$sound.wav'),
    );
  }

  // Expanded buildKey(int tileNumber, Color color) {
  //   return Expanded(
  //     child: TextButton(
  //       style: ButtonStyle(
  //         backgroundColor: MaterialStateProperty.all(color),
  //         shape: MaterialStateProperty.all(
  //           RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(0),
  //           ),
  //         ),
  //       ),
  //       onPressed: () => playSound(tileNumber),
  //       child: const Text(''),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              XyloTile(color: Colors.red, tileNumber: 1),
              XyloTile(color: Colors.orange, tileNumber: 2),
              XyloTile(color: Colors.yellow, tileNumber: 3),
              XyloTile(color: Colors.lightGreen, tileNumber: 4),
              XyloTile(color: Colors.green, tileNumber: 5),
              XyloTile(color: Colors.blue, tileNumber: 6),
              XyloTile(color: Colors.purple, tileNumber: 7),
              // buildKey(1, Colors.red),
              // buildKey(2, Colors.orange),
              // buildKey(3, Colors.yellow),
              // buildKey(4, Colors.lightGreen),
              // buildKey(5, Colors.green),
              // buildKey(6, Colors.blue),
              // buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class XyloTile extends StatelessWidget {
  const XyloTile({Key? key, required this.color, required this.tileNumber})
      : super(key: key);

  final Color color;
  final int tileNumber;

  void playSound(int sound) {
    final player = AssetsAudioPlayer();
    player.open(
      Audio('/assets/note$sound.wav'),
    );
  }

  @override
  Expanded build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ),
        onPressed: () => playSound(tileNumber),
        child: const Text(''),
      ),
    );
  }
}
