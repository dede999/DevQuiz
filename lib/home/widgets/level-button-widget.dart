import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({Key? key, required this.label})
      : assert(["Fácil", "Médio", "Dificil", "Perito"].contains(label)),
        super(key: key);

  final colorConfig = {
    "Fácil": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil
    },
    "Médio": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio
    },
    "Dificil": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil
    },
    "Perito": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito
    },
  };

  get fontColor => colorConfig[label]!['fontColor'];
  get borderColor => colorConfig[label]!['borderColor'];
  get color => colorConfig[label]!['color'];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Text(
            label,
            style: GoogleFonts.notoSans(color: fontColor, fontSize: 13),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: color,
            border: Border.fromBorderSide(BorderSide(color: borderColor))));
  }
}
