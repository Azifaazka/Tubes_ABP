import 'package:flutter/material.dart';
import 'package:tubesabp/model/api/museum_api.dart';

class ArticleViewModel extends ChangeNotifier{
  List<dynamic> dataArticle = [];

  getArticle() async{
    final getAllArticle = await ArticleAPI().getApiArticle();
    dataArticle = getAllArticle;
    notifyListeners();
  }
}