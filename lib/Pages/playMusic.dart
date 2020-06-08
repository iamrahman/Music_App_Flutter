import 'package:flutter/material.dart';
import 'package:musicplayer/Pages/Navigation.dart';
import 'package:musicplayer/Pages/MusicImage.dart';
import 'package:musicplayer/Pages/Controller.dart';

class PlayMusic extends StatefulWidget {
  @override
  _MusicListState createState() => _MusicListState();
}

class _MusicListState extends State<PlayMusic> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F7FE),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Navigation(),
            SizedBox(height: 30.0),
            MusicImage(),
            SizedBox(height: 30.0),
            musicController()
          ],
        ),
      ),
    );
  }
}
