import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black, Colors.redAccent],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/SanLang.png'),
                radius: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Hua Cheng', style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.black54,
                height: 2,
                thickness: 5,
                indent: 100,
                endIndent: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      size: 40,
                    ),
                    onPressed: () async {
                      const url = 'https://github.com/RyuFeng';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 40,
                    ),
                    onPressed: () async {
                      const url = 'https://github.com/RyuFeng';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 40,
                    ),
                    onPressed: () async {
                      const url = 'https://github.com/RyuFeng';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: 40,
                    ),
                    onPressed: () async {
                      const url =
                          'https://www.linkedin.com/in/mansi-singh-899671193/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
