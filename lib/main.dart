import 'package:flutter/material.dart';

import 'group_call_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SF UI",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GroupCallScreen(),
    );
  }
}

