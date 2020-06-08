import 'package:flutter/material.dart';
import 'package:musicplayer/Pages/OneMusicList.dart';
import 'package:musicplayer/Pages/Navigation.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

class MusicList extends StatefulWidget {
  @override

  final FlutterAudioQuery audioQuery = FlutterAudioQuery();

  _MusicListState createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffF2F7FE),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Navigation(),
            SizedBox(height: 20.0,),
            Expanded(child: ListView(
              children: <Widget>[
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox(),
                MusicBox()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
