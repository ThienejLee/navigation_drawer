import 'package:flutter/material.dart';
import 'mainPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Drawer in Flutter",
      home: new MainPage(

      ),
    );
  }
}
