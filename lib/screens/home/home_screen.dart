import 'package:csacademy/configs/themes/ui_perameters.dart';
import 'package:csacademy/controllers/question_paper/question_paper_controller.dart';
import 'package:csacademy/screens/home/question_card.dart';
import 'package:csacademy/widgets/content_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
      body: ContentArea(
        addPadding: false,
        child: Obx(
          () => ListView.separated(
              padding: UiPerameters.mobileScreenPadding,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return QuestionCard(
                  model: _questionPaperController.allPapers[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 20);
              },
              itemCount: _questionPaperController.allPapers.length),
        ),
      ),
    );
  }
}
