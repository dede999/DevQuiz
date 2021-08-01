import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/score-card-widget.dart';
import 'package:dev_quiz/shared/models/data_models.dart';
import 'package:flutter/material.dart';

class AppBarWidgets extends PreferredSize {
  final UserModel user;

  AppBarWidgets({required this.user})
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    height: 162,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.maxFinite,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text.rich(TextSpan(children: [
                            TextSpan(text: "Ola, ", style: AppTextStyles.title),
                            TextSpan(
                                text: "@${user.name}",
                                style: AppTextStyles.titleBold),
                          ])),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(user.photoURL))),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 1.0),
                    child: ScoreCardWidget(),
                  )
                ],
              ),
            ));
}
