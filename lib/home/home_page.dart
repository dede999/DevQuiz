import 'package:dev_quiz/home/widgets/app_bar.dart';
import 'package:dev_quiz/home/widgets/level-button-widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          children: [
            LevelButtonWidget(label: 'Fácil'),
            LevelButtonWidget(label: 'Médio'),
            LevelButtonWidget(label: 'Dificil'),
            LevelButtonWidget(label: 'Perito')
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }
}
