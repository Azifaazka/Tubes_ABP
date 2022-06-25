import 'dart:convert';

// List<User> userFromJson(String str) =>
//     List<User>.from(json.decode(str).map((x) => User.fromJson(x)));
// String userToJson(List<User> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FirebaseUser {

  String? uid;
  String? name, username, email, pass;

  FirebaseUser({this.uid, this.name, this.username, this.email, this.pass});
  
  factory FirebaseUser.fromJson(Map<String, dynamic> json) => FirebaseUser(
        uid: json["uid"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        pass: json["pass"],
      );
 
  Map<String, dynamic> toMap() => {
        "uid": uid,
        "name": name,
        "username": username,
        "email": email,
        "pass": pass,
      };
}

class User {

  int? id;
  String? name, username, email, pass;

  User({this.id, this.name, this.username, this.email, this.pass});
  
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        pass: json["pass"],
      );
 
  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "pass": pass,
      };
}