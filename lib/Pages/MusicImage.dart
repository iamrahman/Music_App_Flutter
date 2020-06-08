import 'package:flutter/material.dart';

class MusicImage extends StatefulWidget {

  @override
  _MusicImageState createState() => _MusicImageState();
}

class _MusicImageState extends State<MusicImage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double sliderVale = 2.0;
  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: width*0.48,
          backgroundImage: NetworkImage('https://c.saavncdn.com/347/Background-Music-Kaabil-Hindi-2017-500x500.jpg'),
          child: CircleAvatar(
            backgroundColor: Colors.deepOrange[400],
            radius: 40.0,
            child: CircleAvatar(
              backgroundColor: Color(0xffF2F7FE),
              radius: 35.0,
            ),
          ),
        ),
        SizedBox(height: 30.0),
        Text('Mai Tere Kabil Nahi', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 0, 51, 1))),
        SizedBox(height: 10.0),
        Text('Singer - Jubin Natiawal', style: TextStyle(fontSize: 20.0, color: Color.fromRGBO(0, 0, 51, 120))),
        SizedBox(height: 10.0),
        SliderTheme(
          data: SliderThemeData(
            trackHeight: 5.0
          ),
          child: Slider(
              activeColor: Colors.deepOrangeAccent[700],
              inactiveColor: Colors.deepOrangeAccent[100],
              value: sliderVale,
              min: 0, max: 100,
              onChanged: (value) {
            setState(() {
              sliderVale = value;
            });
          }),
        )
      ],
    );
  }
}
