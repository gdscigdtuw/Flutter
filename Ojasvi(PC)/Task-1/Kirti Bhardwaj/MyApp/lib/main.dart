import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
@override
Widget build(BuildContext context){
return Scaffold(body: Container(
       
decoration: BoxDecoration(

gradient: LinearGradient(
    begin: Alignment.topLeft,
     end: Alignment.bottomRight,
     colors: [Colors.green, Colors.blue]),//gradient
     ),//box decoration,
    child: Center(
        child:Column(
         
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                CircleAvatar(
                    backgroundImage: AssetImage('assets/1.jpg'),
                    radius: 50,

                ),//circleavatar
        SizedBox(

            height: 20,
        ),
        Text('Kirti Bhardwaj', 
        style: GoogleFonts.abel(textStyle: TextStyle(fontSize:30),),),
        SizedBox(
            height:20,

        ),//sizebox
        Divider(
                color: Colors.black,
                height: 2,
                thickness: 1,
                indent: 180,
                endIndent: 180,

        ),//divider
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            IconButton(
                icon: FaIcon (
                    FontAwesomeIcons.github,
                    size:40,
                ), //faicon
                onPressed : () async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

                ),//ICONBUTTON

            IconButton(
                icon: FaIcon (
                    FontAwesomeIcons.facebook,
                    size:40,
                ), //falcon
               
                
                 onPressed : () async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
                
                
                ),//ICONBUTTON

                IconButton(
                icon: FaIcon (
                    FontAwesomeIcons.medium,
                    size:40,
                ), //falcon
               onPressed : () async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
                
                
                
                
                ),//ICONBUTTON

                IconButton(
                icon: FaIcon (
                    FontAwesomeIcons.twitter,
                    size:40,
                ), //falcon
                 onPressed : () async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
                
                
                
                
                
                
                ),//ICONBUTTON

        ],
        
        
        ),//row
        
        ]),//column
    ),//center
),//Container

);//scaffold

}


}
