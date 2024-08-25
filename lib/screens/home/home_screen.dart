import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:csacademy/configs/themes/app_icons.dart';
import 'package:csacademy/configs/themes/custom_text_styles.dart';
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
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(mobileScreenPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(AppIcons.menuLeft),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Icon(AppIcons.peace),
                          Text(
                            "Hello friend",
                            style:
                                detailText.copyWith(color: onSurfaceTextColor),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "What do you want to learn today?",
                      style: headerText,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ContentArea(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
