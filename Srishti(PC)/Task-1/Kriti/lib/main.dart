import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Stack(
            children: <Widget>[

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.deepPurple,
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 210.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 250.0,
                        height: 250.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2.0)
          ),
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar( backgroundImage: AssetImage('./assets/images/pic.jpeg'),
                          ),
          ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text("Kriti Mathur", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.white),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(icon: FaIcon(FontAwesomeIcons.github),iconSize: 37.0,
                            onPressed: () async {
                              const url = 'https://github.com/kritimathur19';
                              if (await canLaunch(url))  {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                          IconButton(icon: FaIcon(FontAwesomeIcons.linkedin),iconSize: 37.0,
                            onPressed: () async {
                              const url = 'https://linkedin.com/kriti9503';
                              if (await canLaunch(url))  {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                          IconButton(icon: FaIcon(FontAwesomeIcons.facebook),iconSize: 37.0,
                            onPressed: () async {
                              const url = 'https://facebook.com/';
                              if (await canLaunch(url))  {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                          IconButton(icon: FaIcon(FontAwesomeIcons.instagram),iconSize: 37.0,
                            onPressed: () async {
                              const url = 'https://instagram.com/_kritimathur_';
                              if (await canLaunch(url))  {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    )
  );
}