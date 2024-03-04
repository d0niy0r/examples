import 'package:example/core/styles/colors.dart';
import 'package:example/features/qiuz/data/fake_data/fake_data.dart';
import 'package:example/features/qiuz/presentation/widgets/quiz_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../q_home_screen/presentation/widgets/custom_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.title});

  final String title;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<bool> select = [false, false, false, false];
  PageController pageController = PageController();
  int currentIndex = 0;
  int selectedIndex = 0;
  int correctAnswers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: const Icon(Icons.widgets),
        title: Text(widget.title,
            style: const TextStyle(color: Colors.white, fontSize: 20)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(CupertinoIcons.xmark))
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
            Expanded(
                child: PageView.builder(
                    onPageChanged: (index) {
                      currentIndex = index;
                    },
                    controller: pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: FakeData.list.length,
                    itemBuilder: (context, qIndex) {
                      return Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "${qIndex + 1}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const TextSpan(
                                  text: "  ",
                                ),
                                TextSpan(
                                    text: FakeData.list[qIndex].quiz,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          // Container(
                          //   padding: const EdgeInsets.all(8),
                          //   height: 65,
                          //   decoration: BoxDecoration(
                          //     color: AppColors.colorCCDCE7,
                          //     borderRadius: BorderRadius.circular(30),
                          //   ),
                          //   child: Row(
                          //     children: [
                          //       CircleAvatar(
                          //         backgroundColor: AppColors.orange,
                          //         radius: 25,
                          //         child: const Text(
                          //           "A",
                          //           style: TextStyle(
                          //             fontSize: 30,
                          //             fontWeight: FontWeight.bold,
                          //           ),
                          //         ),
                          //       ),
                          //       const SizedBox(
                          //         width: 24,
                          //       ),
                          //       const Text(
                          //         "Roscosmos",
                          //         style: TextStyle(
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 24,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 16,
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(8),
                          //   height: 65,
                          //   decoration: BoxDecoration(
                          //     color: AppColors.orange,
                          //     borderRadius: BorderRadius.circular(30),
                          //   ),
                          //   child: Row(
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     mainAxisAlignment: MainAxisAlignment.end,
                          //     children: [
                          //       const Text(
                          //         "NASA",
                          //         style: TextStyle(
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 24,
                          //         ),
                          //       ),
                          //       const SizedBox(
                          //         width: 150,
                          //       ),
                          //       Icon(
                          //         Icons.cancel,
                          //         color: AppColors.colorCCDCE7,
                          //         size: 55,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 16,
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(8),
                          //   height: 65,
                          //   decoration: BoxDecoration(
                          //     color: AppColors.colorCCDCE7,
                          //     borderRadius: BorderRadius.circular(30),
                          //   ),
                          //   child: Row(
                          //     children: [
                          //       CircleAvatar(
                          //         backgroundColor: AppColors.orange,
                          //         radius: 25,
                          //         child: const Text(
                          //           "A",
                          //           style: TextStyle(
                          //             fontSize: 30,
                          //             fontWeight: FontWeight.bold,
                          //           ),
                          //         ),
                          //       ),
                          //       const SizedBox(
                          //         width: 24,
                          //       ),
                          //       const Text(
                          //         "ISRO",
                          //         style: TextStyle(
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 24,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 16,
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(8),
                          //   height: 65,
                          //   decoration: BoxDecoration(
                          //     color: AppColors.colorCCDCE7,
                          //     borderRadius: BorderRadius.circular(30),
                          //   ),
                          //   child: Row(
                          //     children: [
                          //       CircleAvatar(
                          //         backgroundColor: AppColors.orange,
                          //         radius: 25,
                          //         child: const Text(
                          //           "A",
                          //           style: TextStyle(
                          //             fontSize: 30,
                          //             fontWeight: FontWeight.bold,
                          //           ),
                          //         ),
                          //       ),
                          //       const SizedBox(
                          //         width: 24,
                          //       ),
                          //       const Text(
                          //         "JAXA",
                          //         style: TextStyle(
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 24,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 60,
                          // ),
                          ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: select.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: InkWell(
                                      onTap: () {
                                        for (int i = 0;
                                            i < select.length;
                                            i++) {
                                          select[i] = false;
                                        }
                                        select[index] = true;
                                        selectedIndex = index;
                                        setState(() {});
                                      },
                                      child: QuizButton(
                                          selected: select[index],
                                          text: FakeData
                                              .list[qIndex].variants[index])),
                                );
                              }),
                          CustomButton(
                            height_container: 80,
                            title: 'SUBMIT',
                            color: AppColors.orange,
                            onTap: () {
                              if (!select.contains(true)) return;
                              for (int i = 0; i < select.length; i++) {
                                select[i] = false;
                              }
                              setState(() {});
                              if (FakeData.list[qIndex].correctIndex ==
                                  selectedIndex) correctAnswers++;
                              if (currentIndex == FakeData.list.length - 1) {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          content: Text(
                                              "correct answers: $correctAnswers"),
                                        ));
                                return;
                              }
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.linear);
                            },
                          )
                        ],
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
