import 'dart:convert';

import 'package:http/http.dart' as http;
// get bazadan ma'lumot olish uchun
//post bazaga malumot yuborish un
//put bazaga malumot jonatish un
//delete bazadan malumot ochirish un
class Lesson3Repository {
  Future<Map<String, dynamic>> getData() async{
    final res = await http.get(
        Uri.parse("https://fakestoreapi.com/products/1"),
      headers: {
          "Content-Type" : "Application/json"
      },
    );
    final jsonBody = jsonDecode(res.body);
    return jsonBody;
  }
  
  
  Future<List<Map<String, dynamic>>> getListData() async{
    final res = await http.get(Uri.parse("https://fakestoreapi.com/products"),
    headers: {
      "Content-Type" : "Application/json"
    },
    );
    final body = jsonDecode(res.body);
    List<Map<String, dynamic>> dataList = [];
    for(final item in body ?? []){
      dataList.add(item);
    }
    return dataList;
  }
}