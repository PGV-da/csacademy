import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:csacademy/configs/themes/ui_perameters.dart';
import 'package:flutter/material.dart';

enum AnswerStatus { correct, wrong, answered, notanswered }

class AnswerCard extends StatelessWidget {
  final String answer;
  final bool isSelected;
  final VoidCallback onTap;
  const AnswerCard({
    super.key,
    required this.answer,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: UiPerameters.cardBorderRadius,
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: UiPerameters.cardBorderRadius,
          color:
              isSelected ? answerSelectedColor() : Theme.of(context).cardColor,
          border: Border.all(
              color: isSelected ? answerSelectedColor() : answerBorderColor()),
        ),
        child: Text(
          answer,
          style: TextStyle(color: isSelected ? onSurfaceTextColor : null),
        ),
      ),
    );
  }
}

class CorrectAnswer extends StatelessWidget {
  const CorrectAnswer({super.key, required this.answer});
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: UiPerameters.cardBorderRadius,
        color: correctAnswerColor.withOpacity(0.1),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Text(
        answer,
        style: const TextStyle(
          color: correctAnswerColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class WorngAnswer extends StatelessWidget {
  const WorngAnswer({super.key, required this.answer});
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: UiPerameters.cardBorderRadius,
        color: worngAnswerColor.withOpacity(0.1),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Text(
        answer,
        style: const TextStyle(
          color: worngAnswerColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class NotAnswered extends StatelessWidget {
  const NotAnswered({super.key, required this.answer});
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: UiPerameters.cardBorderRadius,
        color: notAnsweredColor.withOpacity(0.1),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Text(
        answer,
        style: const TextStyle(
          color: notAnsweredColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
