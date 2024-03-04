import 'package:flutter/material.dart';

import '../../../../core/styles/colors.dart';

class QuestionRating extends StatelessWidget {
  const QuestionRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.orange,
      ),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              children: [
                Text(
                  "Question count",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "230",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 2,
            color: Colors.white,
          ),
          const Expanded(
            child: Column(
              children: [
                Text(
                  "Your Ranking",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "230",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.person_2_outlined,
                      size: 12,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
