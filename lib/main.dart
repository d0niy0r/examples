import 'package:example/features/lesson3/presentation/provider/lesson3_provider.dart';
import 'package:example/flutter_lesson/task1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/lesson2/presentation/pages/gridView.dart';
import 'features/lesson2/presentation/pages/lesson2_page.dart';
import 'features/lesson3/presentation/pages/lesson3.dart';
import 'features/lesson3/presentation/pages/use_http.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => Lesson3Provider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false),
        home: UseHttpScreen(),
      ),
    );
  }
}
