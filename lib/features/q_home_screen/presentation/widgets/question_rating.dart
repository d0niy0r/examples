import 'package:flutter/material.dart';

import '../../../../core/styles/colors.dart';

class QuestionRating extends StatelessWidget {
  const QuestionRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.orange,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text("data"),
                Text("data"),
              ],
            ),
          ),
          Container(
            height: 50, width: 2,
            color: Colors.red,
          ),
          Expanded(
            child: Column(
              children: [
                Text("data"),
                Text("data"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
