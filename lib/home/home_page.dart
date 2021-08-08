import 'package:dev_quiz/challenge/widgets/quiz_widget.dart';
import 'package:dev_quiz/home/widgets/app_bar.dart';
import 'package:dev_quiz/home/widgets/level-button-widget.dart';
import 'package:dev_quiz/home/widgets/quiz_card_widget.dart';
import 'package:flutter/material.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(user: controller.user!),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Row(
              children: [
                LevelButtonWidget(label: 'Fácil'),
                LevelButtonWidget(label: 'Médio'),
                LevelButtonWidget(label: 'Dificil'),
                LevelButtonWidget(label: 'Perito')
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                children: controller.quizzes!
                    .map((quiz) => QuizCardWidget(quiz: quiz))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
