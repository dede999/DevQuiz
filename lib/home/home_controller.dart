import 'package:dev_quiz/shared/models/data_models.dart';
import 'package:dev_quiz/core/core.dart';

class HomeController {
  PageState state = PageState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: 'happy_user',
      photoURL: 'https://avatars.githubusercontent.com/u/7433785?v=4',
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
          title: 'NWL 5 -- Flutter',
          questions: [
            QuestionModel(title: 'Está curtindo o curso?', answers: [
              AnswerModel(title: 'Estou gostando demais'),
              AnswerModel(title: 'Flutter é massa'),
              AnswerModel(title: 'Muito TOP', isCorrect: true),
              AnswerModel(title: 'Show de bola'),
            ])
          ],
          image: AppImages.blocks,
          level: Level.easy)
    ];
  }
}
