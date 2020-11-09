import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.pink,
    body: MyApp(),
  )));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
            child: Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(20),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage('assets/images/Divya.jpg'), fit: BoxFit.fill),
        ),
      ),
      Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
            IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.github),
              onPressed: () async {
                const url = 'https://github.com/Divya871';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(
                FontAwesomeIcons.linkedin,
              ),
              onPressed: () async {
                const url = 'https://www.linkedin.com/in/dkdivya25/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.facebook),
              onPressed: () async {
                const url = 'https://www.facebook.com/profile.php?id=100057229954084';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.instagram),
              onPressed: () async {
                const url = 'https://www.instagram.com/divya.yadavvvv_/?hl=en';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ])),
    ])));
  }
}
