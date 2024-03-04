import 'package:example/core/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../q_home_screen/presentation/widgets/custom_button.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: const Icon(Icons.widgets),
        title: Text(title, style: TextStyle(color: Colors.white, fontSize: 20)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(CupertinoIcons.xmark))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Quiz : 60",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "03:00 min",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 2,
              // 2 piksellik bo'ylab o'zgartirish mumkin
              width: MediaQuery.of(context).size.width,
              // Containerni ota ona ekran qatorining uzunligiga moslashtirish
              color: Colors.white,
            ),
            const SizedBox(
              height: 24,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "1.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: "  ",
                  ),
                  TextSpan(
                      text:
                          "Which space agency has decided to carry out first all-famale spacewalk at the International Space Station (ISS)?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
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
                  const Text(
                    "Roscosmos",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
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
                  const Text(
                    "NASA",
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
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
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
                  const Text(
                    "ISRO",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
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
                  const Text(
                    "JAXA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomButton(
              height_container: 80,
              title: 'SUBMIT',
              color: AppColors.orange,
            )
          ],
        ),
      ),
    );
  }
}
