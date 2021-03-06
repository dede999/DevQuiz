import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String text;
  final bool isCorrect;
  final bool isSelected;
  const AnswerWidget({
    Key? key,
    required this.text,
    this.isCorrect = false,
    this.isSelected = false,
  }) : super(key: key);

  Color get _selectedColorCorrect =>
      isCorrect ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderCorrect =>
      isCorrect ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardCorrect =>
      isCorrect ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardCorrect =>
      isCorrect ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleCorrect =>
      isCorrect ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconCorrect =>
      isCorrect ? Icons.check_rounded : Icons.close_rounded;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: isSelected ? _selectedColorCardCorrect : AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(BorderSide(
              color: isSelected ? _selectedBorderCardCorrect : AppColors.border,
            ))),
        child: Row(children: [
          Expanded(
            child: Text(
              text,
              style:
                  isSelected ? _selectedTextStyleCorrect : AppTextStyles.body,
            ),
          ),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: isSelected ? _selectedColorCorrect : AppColors.white,
              borderRadius: BorderRadius.circular(500),
              border: Border.fromBorderSide(BorderSide(
                color: isSelected ? _selectedBorderCorrect : AppColors.border,
              )),
            ),
            child: isSelected
                ? Icon(_selectedIconCorrect, size: 22, color: AppColors.white)
                : null,
          )
        ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
      ),
    );
  }
}
