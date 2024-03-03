import 'package:example/core/styles/colors.dart';
import 'package:example/features/q_home_screen/presentation/widgets/q_home_appbar.dart';
import 'package:example/features/q_home_screen/presentation/widgets/question_rating.dart';
import 'package:example/features/qiuz/presentation/pages/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const QHomeAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            QuestionRating(),
            const SizedBox(height: 20),
            Expanded(
              child: ListWheelScrollView(
                itemExtent: 120,
                diameterRatio: 100,
                perspective: 0.002,
                onSelectedItemChanged: (listIndex) {
                  setState(() {
                    currentIndex = listIndex;
                    print(listIndex.toString());
                  });
                },
                children: List.generate(
                    10,
                    (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: currentIndex + 1 > index
                                ? AppColors.appBarColor
                                : AppColors.appBarColor.withOpacity(0.5),
                          ),
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      QuizScreen(title: "Art and Literature")));
                            },
                            leading:
                                Icon(Icons.draw, size: 30, color: Colors.white),
                            title: Text("Art and Literature",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ),
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
