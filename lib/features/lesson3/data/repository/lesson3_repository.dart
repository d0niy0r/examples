import 'dart:convert';

import 'package:example/core/services/local_database/local_database.dart';
import 'package:http/http.dart' as http;

import '../model/lesson3_model.dart';

// get bazadan ma'lumot olish uchun
//post bazaga malumot yuborish un
//put bazaga malumot jonatish un
//delete bazadan malumot ochirish un
class Lesson3Repository {
  Future<Lesson3Model?> getData() async {
    try {
      final res = await http.get(
        Uri.parse("https://fakestoreapi.com/products/1"),
        headers: {"Content-Type": "Application/json"},
      );
      final jsonBody = jsonDecode(res.body);
      final response = Lesson3Model.fromJson(jsonBody);
      return response;
    } catch (e) {
      throw Exception("generatsiyada xatolik bo'ldi");
    }
  }

  Future<List<Lesson3Model>> getListData() async {
    try{
      final res = await http.get(
        Uri.parse("https://fakestoreapi.com/products"),
        headers: {"Content-Type": "Application/json"},
      );
      await StorageRepository.setString(key: "data", value: res.body);
      final List<dynamic> responseBody = jsonDecode(res.body);
      List<Lesson3Model> dataList = [];
      for (final item in responseBody ?? []) {
        dataList.add(Lesson3Model.fromJson(item));
      }
      return dataList;
    } catch(e){
      print("$e");
      final localData = StorageRepository.getString(keyOfValue: 'data');
      print(localData);
      final res = jsonDecode(localData ?? "");
      List<Lesson3Model> dataList = [];
      for (final item in res ?? []) {
        try{
        dataList.add(Lesson3Model.fromJson(item));
        }catch(e){}
      }
      return dataList;
      }
    }

}
