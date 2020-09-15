import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:niro_speaks/models/chanel_models.dart';
import 'package:niro_speaks/myinfo.dart';
// import 'package:niro_speaks/playList.dart';
import 'package:niro_speaks/screens/Home_screen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Niro App',
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 170,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/niro.jpg'),
          AssetImage('images/niro.jpg'),
          AssetImage('images/niro.jpg'),
          AssetImage('images/niro.jpg'),
          AssetImage('images/niro.jpg'),
          AssetImage('images/niro.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Niro Speaks',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ]),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header//
            new UserAccountsDrawerHeader(
              accountName: Text(
                'Niro Speaks',
                style: new TextStyle(fontSize: 30),
              ),
              accountEmail: Text('madampitige@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.black),
            ),
            //body//
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyInfo()));
              },
              child: ListTile(
                title: Text('My profile'),
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('featured'),
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Notification'),
                leading: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Statistics'),
                leading: Icon(
                  Icons.table_chart,
                  color: Colors.black,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Login Out'),
                leading: Icon(
                  Icons.lock_open,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black.withOpacity(0.1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.red,
        child: Column(
          children: <Widget>[
            image_carousel,
            // Container(
            //   padding: const EdgeInsets.only(top: 5,left: 20,right: 20,),
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height/4,
            //   child: Image.asset('images/niro.jpg',
            //     height: double.infinity,
            //     width: double.infinity,
            //     fit: BoxFit.cover,
            //     filterQuality: FilterQuality.high,
            //     ),
            //   decoration: BoxDecoration(
            //     color: Colors.black,
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),

            // ),
            //
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "NIRO SPEAKS",
                style: new TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 380,
                  // height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  padding: EdgeInsets.all(20),
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        color: Colors.amber[200],
                        margin: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          splashColor: Colors.green,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset(
                                  'images/niro.jpg',
                                  height: 100,
                                ),
                                Text(
                                  "Personal\nBranding",
                                  style: new TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.amber[200],
                        margin: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            // widget.typ.type = 'radish';
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => ItemDiscrip()));
                          },
                          splashColor: Colors.green,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset(
                                  'images/niro.jpg',
                                  height: 100,
                                ),
                                Text(
                                  "Project\nmanagement",
                                  style: new TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.amber[200],
                        margin: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            // widget.typ.type = 'carrot';
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => ItemDiscrip()));
                          },
                          splashColor: Colors.green,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset(
                                  'images/niro.jpg',
                                  height: 100,
                                ),
                                Text(
                                  "Agile",
                                  style: new TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.amber[200],
                        margin: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            // widget.typ.type = 'tomato';
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => ItemDiscrip()));
                          },
                          splashColor: Colors.green,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset(
                                  'images/niro.jpg',
                                  height: 100,
                                ),
                                Text(
                                  "Self\nEmpowerment",
                                  style: new TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.amber[200],
                        margin: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            // widget.typ.type = 'tomato';
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => ItemDiscrip()));
                          },
                          splashColor: Colors.green,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset(
                                  'images/niro.jpg',
                                  height: 100,
                                ),
                                Text(
                                  "Self\nEmpowerment",
                                  style: new TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Container(
                //   child: Column(
                //     children: <Widget>[
                //       Padding(
                //         padding: const EdgeInsets.only(top: 20),
                //         child: Text("@Agile Great|Niroshan Madampitige",
                //           style: new TextStyle(
                //             fontSize: 15,
                //             color: Colors.blue,
                //             ),),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
