import 'package:flutter/material.dart';


class musicController extends StatefulWidget {
  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<musicController> with SingleTickerProviderStateMixin {
  AnimationController _controller;

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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.deepOrange[100],
          radius: 25.0,
          child: CircleAvatar(
            backgroundColor: Colors.deepOrange[800],
              radius: 20.0,
              child: IconButton(icon: Icon(Icons.first_page, color: Colors.deepOrange[100]))
          ),
        ),
        SizedBox(width: 40.0),
        CircleAvatar(
          backgroundColor: Colors.deepOrange[100],
          radius: 45.0,
          child: CircleAvatar(
            backgroundColor: Colors.deepOrange[700],
            radius: 40.0,
            child: IconButton(icon: Icon(Icons.play_arrow, color: Colors.deepOrange[100], size: 30.0,)),
          ),
        ),
        SizedBox(width: 40.0),
        CircleAvatar(
          backgroundColor: Colors.deepOrange[100],
          radius: 25.0,
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.deepOrange[800],
              child: IconButton(icon: Icon(Icons.last_page, color: Colors.deepOrange[100]))),
        )
      ],
    );
  }
}
