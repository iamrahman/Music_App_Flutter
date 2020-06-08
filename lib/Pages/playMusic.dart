import 'package:flutter/material.dart';
import 'package:musicplayer/Pages/Navigation.dart';
import 'package:musicplayer/Pages/MusicImage.dart';
import 'package:musicplayer/Pages/Controller.dart';

class PlayMusic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF2F7FE),
      body: Container(
        height: height,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Navigation(),
              SizedBox(height: height*0.01),
              MusicImage(),
              SizedBox(height: height*0.01),
              musicController()
            ],
          ),
        ),
      ),

    );
  }
}
