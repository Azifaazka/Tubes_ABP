import 'package:flutter/material.dart';
import 'package:tubesabp/model/api/reviewapi.dart';

import '../../model/ReviewModel.dart';

class ReviewViewModel extends ChangeNotifier {
  List<ReviewModel> listreview = [];
  List<ReviewModel> listkomen = [];

  getKomen(int id) async {
    final getReview = await ReviewAPI().getReview(id);
    listreview = getReview;
    notifyListeners();
  }

  filterKomen(int id) {
    listkomen = listreview
        .where(
            (element) => element.id_museum.toString().contains(id.toString()))
        .toList();
  }
}
