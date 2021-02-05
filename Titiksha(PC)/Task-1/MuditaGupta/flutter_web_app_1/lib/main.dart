import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Web App',
      theme: ThemeData(
        // This is the theme of your application.

        //primarySwatch: Colors.blue,

        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final img = Center(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(5.0),
        height: 200.0,
        //width = 120.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/flower.jpg'),

          ),
          //borderRadius: BorderRadius.circular(120.0),
        ),
      ),
    );

    final txt = Container(
      margin: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: Text('Mudita Gupta', style: TextStyle(fontSize: 26.0, color: Colors.white))
    );

    _launchLinked() async {
      const url = 'https://linkedin.com';
      if (await canLaunch(url)) {
        await launch(url);
      }
      else {
        throw 'Could not launch $url';
      }
    }

    final linkedlink = IconButton(
            onPressed: _launchLinked,
            hoverColor: Colors.black45,
            color: Colors.black,
            icon: Image.asset('assets/linkedin-logo.jpg', width : 30.0, height : 30.0 ),
            iconSize: 30.0,
          );

    _launchGit() async {
              const url = 'https://github.com/mgupta1212';
              if (await canLaunch(url)) {
                await launch(url);
              }
              else {
                throw 'Could not launch $url';
              }
    }

    final gitlink =  IconButton(
          onPressed: _launchGit,
          color: Colors.black,
          iconSize: 30.0,
          icon: Image.asset('assets/github-icon.png',width : 30.0, height : 30.0 ),
        );


    final linkRow = ButtonBar(
      alignment: MainAxisAlignment.center, // If i remove this, everything disappears
      //buttonHeight: 35.0,
      children: <Widget>[gitlink, linkedlink],// twitlink],
      );


    final body = Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
        )
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children : <Widget>[img,txt,linkRow],
        ),
    );

    return Scaffold(
       body: body,
      );
   }
}
