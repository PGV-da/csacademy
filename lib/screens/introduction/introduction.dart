import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:csacademy/screens/main_question/main_question_screen.dart';
import 'package:csacademy/widgets/app_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 65,
              ),
              const SizedBox(height: 40),
              const Text(
                "Confident for Success",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: onSurfaceTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              AppCircleButton(
                child: const Icon(
                  Icons.arrow_forward,
                  size: 35,
                ),
                onTap: () => Get.offAndToNamed(MainQuestionScreen.routeName),
              )
            ],
          ),
        ),
      ),
    );
  }
}
