import 'package:flutter/foundation.dart';

class ReviewModel {
  late int id;
  late String id_museum;
  late String name;
  late String comment;
  late String profile;
  late String ratings;

  ReviewModel(
      {required this.id,
      required this.id_museum,
      required this.name,
      required this.comment,
      required this.profile,
      required this.ratings});

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
      id: json['id'],
      id_museum: json['id_museum'],
      name: json['name'],
      comment: json['comment'],
      profile: json['profile'],
      ratings: json['ratings']);
}
