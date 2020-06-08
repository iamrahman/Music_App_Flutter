import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> with SingleTickerProviderStateMixin {
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Icon(Icons.arrow_back),
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.fromLTRB(10.0,0.0,0.0,0.0),
          decoration: BoxDecoration(
              color: Color(0xffF2F7FE),
              boxShadow: [BoxShadow( color: Colors.grey[400], offset: Offset(5,2), spreadRadius: 1.0, blurRadius: 3.0)],
              border: Border.all(color: Colors.white,width: 1.0)
          ),
        ),
        Text('Make some noise', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 0, 51, 1))),
        Container(
          child: Icon(Icons.list),
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.fromLTRB(0.0,0.0,10.0,0.0),
          decoration: BoxDecoration(
              color: Color(0xffF2F7FE),
            boxShadow: [BoxShadow( color: Colors.grey[400], offset: Offset(5,2), spreadRadius: 1.0, blurRadius: 3.0)],
            border: Border.all(color: Colors.white,width: 1.0)
          ),
        ),
      ],
    );
  }
}
