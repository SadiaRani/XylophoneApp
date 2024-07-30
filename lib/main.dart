import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  Future<void> soundplay(int no) async {
    final player = AudioPlayer();
    await player.play(AssetSource('assets_note$no.wav'));

  }
  Expanded createbutton(Color color, int number){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: ()  async {
          soundplay(number);
        },
       child: Text(''),
      ),
    );
  }
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    createbutton(Colors.red,1),
                    createbutton(Colors.orange,2),
                    createbutton(Colors.yellow,3),
                    createbutton(Colors.green,4),
                    createbutton(Colors.lightBlue,5),
                    createbutton(Colors.purple,6),
                    createbutton(Colors.red ,7),
                  ],
                )
    )));
  }
}
