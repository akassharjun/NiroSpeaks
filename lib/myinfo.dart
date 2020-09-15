import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'images/niro.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // decoration: BoxDecoration(
            //       color: Colors.green.withOpacity(0.75),
            //       borderRadius: BorderRadius.only(
            //         bottomLeft: Radius.circular(25.0),
            //         bottomRight: Radius.circular(25.0)
            //       )
            //     ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "NIROSHAN\nMADAMPITIGE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Agile coach and head of Delivery",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 30,
                  width: 2,
                ),
                SizedBox(
                  height: 400,
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text(
                      "I am an agile leader who is leading an enterprise Agile transformation and, heading the agile delivery at Gapstars, a Netherlands company.I am a university lecturer, a trainer and a keynote speaker who can get any audience to the edge of their seats.\n\nI am an agile leader who is leading an enterprise Agile transformation and, heading the agile delivery at Gapstars, a Netherlands company.I am a university lecturer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
