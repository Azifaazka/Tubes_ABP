import 'package:flutter/material.dart';

import '../../model/api/museumapi.dart';

class MuseumViewModel extends ChangeNotifier {
  List<dynamic> listmuseum = [];

  getMuseum() async {
    final getMuseum = await MuseumAPI().getData();
    listmuseum = getMuseum;
    notifyListeners();
  }
}
