import 'package:flutter/material.dart';
import 'package:most_viewed/views/home_view.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
  
}