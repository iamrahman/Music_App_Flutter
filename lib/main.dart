import 'package:flutter/material.dart';
import 'package:musicplayer/Pages/musicList.dart';
import 'package:musicplayer/Pages/playMusic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/':  (context) => PlayMusic(),
        '/musics':  (context) => MusicList(),
      },
    );
  }
}
