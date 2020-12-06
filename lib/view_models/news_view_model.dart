import 'package:most_viewed/models/news_model.dart';
import 'package:most_viewed/services/news_service.dart';

class NewsViewModels {
  List<NewsModel> _newsList = [];

  Future<List<NewsModel>> fetchData() async {
    return _newsList = await NewsService().getNewsList();
  }
}
