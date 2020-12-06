import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:most_viewed/models/news_model.dart';

class NewsService {
  static const API =
      "https://api.nytimes.com/svc/mostpopular/v2/viewed/1.json?api-key=xNtEAmLi29If8ZeBXov9aIvAmkbwRGYZ";
  List<NewsModel> newsList = [];
  int c = 0;

  Future<List<NewsModel>> getNewsList() async {
    http.Response response = await http.get(API);
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["results"];
    for (var item in data) {
      final news = NewsModel(
        title: item["title"],
        url: item["url"],
        publishedDate: item["published_date"],
        byline: item["byline"],
      );
      if (news.title.isNotEmpty) newsList.add(news);
    }
    return newsList;
  }
}
