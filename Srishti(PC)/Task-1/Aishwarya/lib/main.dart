import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Profile Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
                                    _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.deepPurpleAccent,
                  ]
                )
              ),
            ),
            Padding(

             padding: EdgeInsets.only(left:44.0,top:250.0),
            child:Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                children: <Widget>[
                Container(
                  width: 250.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color:Colors.white, width: 2.0),
                  ),

                  padding: EdgeInsets.all(0.0),
                  child: CircleAvatar(
                    //backgroundImage: NetworkImage('https://scontent-ams4-1.xx.fbcdn.net/v/t1.0-0/c0.20.206.206a/p206x206/70411918_2382746141941597_4433606778730577920_n.jpg?_nc_cat=108&ccb=2&_nc_sid=da31f3&_nc_ohc=O3IeqGSh3qcAX9UC3qW&_nc_ht=scontent-ams4-1.xx&tp=27&oh=6a0aabf0280848158d076f98c1c07983&oe=5FC1A130'),
                      backgroundImage: NetworkImage('./assets/images/Aishwarya.jpg'),
                  ),
                ),
           ],
        ),
                Text(
                  "Aishwarya Suresh",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0, color: Colors.white),
                ),
                IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: FaIcon(FontAwesomeIcons.github),
                  onPressed: () async {
                    const url = 'https://github.com/this-is-aishwarya';
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
                    const url = 'http://linkedin.com/in/aishwarya-suresh-067a401a6';
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
                    const url = 'https://www.facebook.com/aish.suresh1';
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
                    const url = 'https://www.instagram.com/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ],
            ),

      ),


     ]
    ),
        )
    );

  }
}
