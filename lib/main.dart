import 'package:example/flutter_lesson/task1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/lesson2/presentation/pages/gridView.dart';
import 'features/lesson2/presentation/pages/lesson2_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: GridViewWidget(),
    );
  }
}
