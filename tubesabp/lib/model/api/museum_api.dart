import 'dart:convert';
import 'package:http/http.dart' as http;

class ArticleAPI{
  Future getApiArticle() async{
    final response = await http.get(Uri.parse("http://192.168.64.63:8000/api/articles"));
    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
        return data['data'];
      
    }else{
      throw Exception('error');
    }
  }
}