import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:most_viewed/Widgets/Card%20Widget.dart';
import 'package:most_viewed/models/news_model.dart';
import 'package:most_viewed/view_models/news_view_model.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final _news = NewsViewModels();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
        body: FutureBuilder<List<NewsModel>>(
          future: _news.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) => CardWidget(
                        context,
                        snapshot.data[index].title,
                        snapshot.data[index].byline,
                        snapshot.data[index].url,
                        snapshot.data[index].publishedDate,
                      ));
            } else {
              return ModalProgressHUD(
                inAsyncCall: true,
                  child: Container(child: Center(child: Text("Loading....."))));
            }
          },
        ));
  }
}
