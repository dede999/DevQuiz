import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/shared/models/data_models.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final QuizModel quiz;
  const QuizCardWidget({Key? key, required this.quiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 40, width: 40, child: Image.asset(AppImages.blocks)),
          SizedBox(height: 15),
          Text(quiz.title, style: AppTextStyles.heading15),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Text(
                      '${quiz.questionsAnswered}/${quiz.questions.length}',
                      style: AppTextStyles.body11)),
              Expanded(
                flex: 4,
                child: ProgressIndicatorWidget(
                    value: quiz.questionsAnswered / quiz.questions.length),
              )
            ],
          )
        ],
      ),
    );
  }
}
