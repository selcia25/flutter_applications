import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Player',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AudioPlayerApp(),
    );
  }
}

class AudioPlayerApp extends StatefulWidget {
  @override
  _AudioPlayerAppState createState() => _AudioPlayerAppState();
}

class _AudioPlayerAppState extends State<AudioPlayerApp> {
  AudioPlayer audioPlayer = AudioPlayer();
  String audioPath = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';

  void playAudio() async {
  int result = await audioPlayer.play(audioPath as Source);
  if (result == 1) {
    print('Playing audio');
  }
}


  void pauseAudio() async {
    int result = await audioPlayer.pause();
    if (result == 1) {
      print('Paused audio');
    }
  }

  void stopAudio() async {
    int result = await audioPlayer.stop();
    if (result == 1) {
      print('Stopped audio');
    }
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Audio Player')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Audio URL: $audioPath'),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: playAudio,
              child: Text('Play Audio'),
            ),
            ElevatedButton(
              onPressed: pauseAudio,
              child: Text('Pause Audio'),
            ),
            ElevatedButton(
              onPressed: stopAudio,
              child: Text('Stop Audio'),
            ),
          ],
        ),
      ),
    );
  }
}
