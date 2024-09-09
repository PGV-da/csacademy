import 'package:csacademy/configs/themes/ui_perameters.dart';
import 'package:csacademy/controllers/question_paper/questions_controller.dart';
import 'package:csacademy/widgets/common/background_decoration.dart';
import 'package:csacademy/widgets/common/custom_app_bar.dart';
import 'package:csacademy/widgets/content_area.dart';
import 'package:csacademy/widgets/questions/answer_card.dart';
import 'package:csacademy/widgets/questions/countdown_timer.dart';
import 'package:csacademy/widgets/questions/question_number_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestOverviewScreen extends GetView<QuestionsController> {
  const TestOverviewScreen({super.key});

  static const String routeName = "/testoverview";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: controller.completedTest,
        ),
        body: BackgroundDecoration(
          child: Column(
            children: [
              Expanded(
                child: ContentArea(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CountdownTimer(
                            time: '',
                            color: UiPerameters.isDarkMode()
                                ? Theme.of(context).textTheme.bodyLarge!.color
                                : Theme.of(context).primaryColor,
                          ),
                          Obx(() => Text('${controller.time} Remaining'))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: GridView.builder(
                          itemCount: controller.allQuestions.length,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: Get.width ~/ 75,
                            childAspectRatio: 1,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemBuilder: (_, index) {
                            AnswerStatus? _answerStatus;
                            if (controller.allQuestions[index].selectedAnswer !=
                                null) {
                              _answerStatus = AnswerStatus.answered;
                            }
                            return QuestionNumberCard(
                              index: index + 1,
                              status: _answerStatus,
                              onTap: () => controller.jumpToQuestion(index),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
