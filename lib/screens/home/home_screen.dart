import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:csacademy/configs/themes/app_icons.dart';
import 'package:csacademy/configs/themes/custom_text_styles.dart';
import 'package:csacademy/configs/themes/ui_perameters.dart';
import 'package:csacademy/controllers/question_paper_controller.dart';
import 'package:csacademy/controllers/zoom_drawer_controller.dart';
import 'package:csacademy/screens/home/question_card.dart';
import 'package:csacademy/screens/menu/menu_screen.dart';
import 'package:csacademy/widgets/app_circle_button.dart';
import 'package:csacademy/widgets/content_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<MyZoomDrawerController> {
  const HomeScreen({super.key});

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
      body: GetBuilder<MyZoomDrawerController>(builder: (_) {
        return Container(
          decoration: BoxDecoration(gradient: mainGradient()),
          child: ZoomDrawer(
              overlayBlur: 0.5,
              borderRadius: 30.0,
              angle: 0.0,
              mainScreenScale: 0.1,
              style: DrawerStyle.defaultStyle,
              slideWidth: MediaQuery.of(context).size.width * 0.8,
              controller: _.zoomDrawerController,
              menuScreen: MyMenuScreen(),
              mainScreen: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(mobileScreenPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppCircleButton(
                            onTap: controller.toggleDrawer,
                            child: const Icon(AppIcons.menuLeft),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                const Icon(AppIcons.peace),
                                Text(
                                  "Hello friend",
                                  style: detailText.copyWith(
                                      color: onSurfaceTextColor),
                                )
                              ],
                            ),
                          ),
                          const Text(
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
                                    model: _questionPaperController
                                        .allPapers[index],
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const SizedBox(height: 20);
                                },
                                itemCount:
                                    _questionPaperController.allPapers.length),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        );
      }),
    );
  }
}
