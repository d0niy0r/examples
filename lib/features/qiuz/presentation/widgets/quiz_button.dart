import 'package:example/features/qiuz/data/fake_data/fake_data.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/colors.dart';

class QuizButton extends StatefulWidget {
  const QuizButton({super.key, required this.selected, required this.text});
  final bool selected;
  final String text;

  @override
  State<QuizButton> createState() => _QuizButtonState();
}

class _QuizButtonState extends State<QuizButton> {
  @override
  Widget build(BuildContext context) {
    return widget.selected ? Container(
      padding: const EdgeInsets.all(8),
      height: 65,
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            width: 150,
          ),
          Icon(
            Icons.cancel,
            color: AppColors.colorCCDCE7,
            size: 55,
          ),
        ],
      ),
    ) : Container(
      padding: const EdgeInsets.all(8),
      height: 65,
      decoration: BoxDecoration(
        color: AppColors.colorCCDCE7,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.orange,
            radius: 25,
            child: const Text(
              "A",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
