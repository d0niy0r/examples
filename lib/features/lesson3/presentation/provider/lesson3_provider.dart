import 'package:example/features/lesson3/data/model/lesson3_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/repository/lesson3_repository.dart';

class Lesson3Provider extends ChangeNotifier {
  Lesson3Model? lesson3model;
  bool loading = false;
  bool error = false;
  bool success = false;

  // Lesson3Model? get lesson3Model => _lesson3model;
  // bool get loading => _loading;
  // bool get error => _error;
  // bool get success => _success;
  void getData() async {
    try{
      loading = true;
      error = false;
      lesson3model = await Lesson3Repository().getData();
      loading = false;
      success = true;
    }catch(_){
      loading = false;
      error = true;
    }
    notifyListeners();
  }
}