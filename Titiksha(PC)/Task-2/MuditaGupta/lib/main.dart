import 'package:flutter/material.dart';

import 'music.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MusicScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
