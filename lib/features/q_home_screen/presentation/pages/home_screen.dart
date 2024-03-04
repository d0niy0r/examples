import 'package:example/features/q_home_screen/presentation/widgets/custom_button.dart';
import 'package:example/features/q_home_screen/presentation/widgets/q_home_appbar.dart';
import 'package:example/features/q_home_screen/presentation/widgets/question_rating.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/colors.dart';
import '../../../qiuz/presentation/pages/home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const QHomeAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const QuestionRating(),
            const SizedBox(height: 20),
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: 10,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(color: AppColors.appBarColor),
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const QuizScreen(
                                    title: "Art and Literature")));
                          },
                          leading: const Icon(Icons.draw,
                              size: 30, color: Colors.white),
                          title: const Text("Art and Literature",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      );
                    },
                  ),
                  // Positioned(
                  //   top: 380,
                  //   child: Container(
                  //     height: 200,
                  //     width: size.height,
                  //     decoration: BoxDecoration(
                  //       gradient: LinearGradient(
                  //           begin: Alignment.topCenter,
                  //           end: Alignment.bottomCenter,
                  //           colors: [
                  //             Colors.black.withOpacity(0),
                  //             // Colors.black.withOpacity(0),
                  //             // Colors.black.withOpacity(0),
                  //             // Colors.black.withOpacity(0.9),
                  //             Colors.black.withOpacity(1),
                  //           ]),
                  //     ),
                  //   ),
                  // )
                ],
              ),
              // ListWheelScrollView(
              //   itemExtent: 100,
              //   diameterRatio: 100,
              //   perspective: 0.002,
              //   onSelectedItemChanged: (listIndex) {
              //     setState(() {
              //       currentIndex = listIndex;
              //       print(listIndex.toString());
              //     });
              //   },
              //   children: List.generate(
              //       10,
              //       (index) => AnimatedContainer(
              //         margin: const EdgeInsets.symmetric(vertical: 10),
              //             duration: const Duration(milliseconds: 300),
              //             padding: const EdgeInsets.symmetric(
              //                 vertical: 10, horizontal: 20),
              //             decoration: BoxDecoration(
              //               color: currentIndex + 2 > index
              //                   ? AppColors.appBarColor
              //                   : AppColors.appBarColor.withOpacity(0.5),
              //             ),
              //             child: ListTile(
              //               onTap: () {
              //                 Navigator.of(context).push(MaterialPageRoute(
              //                     builder: (context) => const QuizScreen(
              //                         title: "Art and Literature")));
              //               },
              //               leading: const Icon(Icons.draw,
              //                   size: 30, color: Colors.white),
              //               title: const Text("Art and Literature",
              //                   style: TextStyle(
              //                       color: Colors.white, fontSize: 20)),
              //             ),
              //           )),
              // ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              flex: 1,
              child: CustomButton(
                height_container: 50,
                title: "UPGRADE",
                color: AppColors.colorCCDCE7,
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
