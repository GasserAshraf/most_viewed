import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget CardWidget(
    context, String title, String byline, String url, String publishedDate) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Card(
      color: Colors.white,
      elevation: 0.0,
      child: Stack(
        children: [
          Container(
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
                      height: height * 0.18,
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "$title",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "$byline",
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                child: Icon(Icons.chevron_right),
                onTap: () => _launchURL(url),
              )
            ]),
          ),
          Positioned(
            bottom: height * 0.02,
            left: width * 0.7,
            child: Container(
              child: Row(
                children: [Icon(Icons.calendar_today), Text("$publishedDate")],
              ),
            ),
          )
        ],
      ));
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
