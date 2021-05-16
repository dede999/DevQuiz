import 'package:dev_quiz/challenge/widgets/question_indicator.dart';
import 'package:dev_quiz/challenge/widgets/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(child: QuestionIndicatorWidget(), top: true),
      ),
      body: QuizWidget(
        title: 'Que frase fora dita por S Tomás de Aquino?',
      ),
    );
  }
}
