import 'package:flutter/material.dart';


Widget CardWidget(context){
  double width = MediaQuery
      .of(context)
      .size
      .width;
  double height = MediaQuery
      .of(context)
      .size
      .height;
  return Card(
      color: Colors.white,
      elevation: 0.0,
      child: Container(
        width: width,
        height: height * 0.18,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(children: <Widget>[
          Container(
              padding: new EdgeInsets.only(right: 24.0),
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 30.0,
              )),
          Container(
            width: width * 0.58,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Text(
                        "Dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: height * 0.02,),
                      Text(
                        "by david leonhardt and sturat a.thompson",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.calendar_today),
                          Text("2017-06-23")
                        ],
                      )
                    ],
                  )

              ),
            ),
          ),
          Icon(Icons.chevron_right)
        ]
        ),

      )
  );
}