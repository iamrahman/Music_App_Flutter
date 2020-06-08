import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MusicBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      //color: Colors.deepOrange[100],
      child: Column(
        children: <Widget>[
          OneMusicInList(),
        ],
      ),
    );
  }
}


class OneMusicInList extends StatefulWidget {
  @override
  _OneMusicInListState createState() => _OneMusicInListState();
}

class _OneMusicInListState extends State<OneMusicInList> with SingleTickerProviderStateMixin {
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
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          MusicImageAndNameList(),
          MusicListController(),
        ],
      ),
    );
  }
}


class MusicImageAndNameList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('https://c.saavncdn.com/347/Background-Music-Kaabil-Hindi-2017-500x500.jpg'),
          radius: 30.0,
        ),
        SizedBox(width: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Mai Tere Kabil Nahi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),),
            Text('Jubin Natiywal'),
          ],
        ),
      ],
    );
  }
}


class MusicListController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.favorite_border, color: Colors.red[700]), onPressed: null,),
          IconButton(icon: Icon(Icons.receipt, color: Colors.deepOrange[700]), onPressed: null,),
          IconButton(icon: Icon(Icons.play_arrow, color: Colors.deepOrange[700]), onPressed: null,),
        ],
      ),
    );
  }
}

