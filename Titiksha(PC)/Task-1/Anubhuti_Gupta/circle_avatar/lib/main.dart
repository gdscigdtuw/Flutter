import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Me!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeAv(),

    );
  }
}

class HomeAv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Avatar'),
      ),
      body: BackG(),
    );
  }
}

class BackG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 105,
                backgroundColor: Colors.black54,
                child: CircleAvatar(
                  radius: 100,
                  //backgroundColor: Colors.red,
                  backgroundImage: AssetImage('Asset/me.jpg'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              child: Text(
                'Anubhuti Gupta',
                style: _biggerFont,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              height: 2,
              width: 100,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    iconSize: 36.0,
                    onPressed: _launchURL1,
                  ),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.github),
                    iconSize: 36.0,
                      onPressed: _launchURL2,
                  ),
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
          ],
        )
      );
  }
  final _biggerFont = TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
  );
}

_launchURL1() async {
  const url = 'https://www.linkedin.com/in/anubhuti-gupta-8a01121a5';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://github.com/anubhuti24g';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}