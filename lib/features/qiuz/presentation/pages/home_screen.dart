import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Icon(Icons.widgets),
        title: Text(title, style: TextStyle(color: Colors.white, fontSize: 20)),
        actions: [IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(CupertinoIcons.xmark))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 50),
          Row(
            children: [

            ],
          ),
        ],
      ),
    );
  }
}
