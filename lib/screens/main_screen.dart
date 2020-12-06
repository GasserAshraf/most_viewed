import 'package:flutter/material.dart';
import 'package:most_viewed/Widgets/Card%20Widget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          leading: Icon(Icons.menu),
          title: Text("NY Times Most Popular "),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: width * 0.02,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: width * 0.02,
            )
          ],
        ),
        body: ListView.builder(itemCount: 3,itemBuilder: (context,index){
          return CardWidget(context);
        })
    );
  }

}
