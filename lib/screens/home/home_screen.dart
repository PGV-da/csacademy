import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:csacademy/configs/themes/app_icons.dart';
import 'package:csacademy/configs/themes/ui_perameters.dart';
import 'package:csacademy/controllers/zoom_drawer_controller.dart';
import 'package:csacademy/screens/menu/menu_screen.dart';
import 'package:csacademy/widgets/app_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<MyZoomDrawerController> {
  const HomeScreen({super.key});

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
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
              menuScreen: const MyMenuScreen(),
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
                              Text(
                                "Hello friend",
                              )
                            ],
                          ),
                        ),
                        const Text(
                          "What do you want to learn today?",
                        )
                      ],
                    ),
                  ),
                ],
              ))),
        );
      }),
    );
  }
}
