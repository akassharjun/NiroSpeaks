import 'package:flutter/material.dart';

class PlayList extends StatefulWidget{
 
  final String title;
  final String url;
  PlayList(this.title,this.url);
  @override
  _PlayListState createState() =>new _PlayListState();

}
class _PlayListState extends State<PlayList>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Branding',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
         
        ],
      ),
    );
  }

}