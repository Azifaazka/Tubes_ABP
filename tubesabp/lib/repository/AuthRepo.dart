import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tubesabp/model/usermodel.dart';
import 'package:tubesabp/repository/Global.dart';

class AuthRepo{

  static Future<http.Response> postRegister (
    String name, String username, String email, String pass
    ) async{
      Map data = {
        "name" : name,
        "username" : username,
        "email" : email,
        "password" : pass,
        "is_admin" : 0,
      };
      var body = json.encode(data);
      var url = Uri.parse(baseUrl + '/register');

      http.Response response = await http.post(
        url, 
        headers:  headers,
        body: body,
      );
      print(response.body);
      return response;
    
  }

  static Future<http.Response> postLogin (String email, String pass
    ) async{
      Map data = {
        "email" : email,
        "password" : pass,
      };
      var body = json.encode(data);
      var url = Uri.parse(baseUrl + '/login');

      http.Response response = await http.post(
        url, 
        headers:  headers,
        body: body,
      );
      print(response.body);
      return response;
    
  }

  var url = Uri.parse('http://192.168.64.63:8000/api/profile');

  Future<List<dynamic>> _Users() async {
    var result = await http.get(url);
    return json.decode(result.body)['data'];
  }

  // static Future<http.Response> postLogOut () async{
  //     Map data = {
  //       "email" : email,
  //       "password" : pass,
  //     };
  //     var url = Uri.parse(baseUrl + '/logout');
  //     var body = json.decode(data.toString());

  //     http.Response response = await http.post(
  //       url, 
  //       headers:  headers,
  //       body: body,
  //     );
  //     print(response.body);
  //     return response;
    
  // }
}
