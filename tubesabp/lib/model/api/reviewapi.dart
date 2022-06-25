import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../ReviewModel.dart';

class ReviewAPI {
  Future<List<ReviewModel>> getReview(int id) async {
    final response = await http.get(
        Uri.parse("http://192.168.64.63:8000/api/museums/$id/allreview"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final review =
          (data['data'] as List).map((e) => ReviewModel.fromJson(e)).toList();
      return review;
    } else {
      throw Exception('error');
    }
  }

  Future postData(String name, String comment, String ratings, int id) async {
    try {
      // final response = await http.post(Uri.parse(_baseUrl + '/Album'), body: {
      final response = await http.post(
          Uri.parse("http://192.168.64.63:8000/api/museums/$id/allreview"),
          body: {
            "name": name,
            "comment": comment,
            "ratings": ratings,

            // "id": id,
          });
      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
