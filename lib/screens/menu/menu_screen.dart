import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:csacademy/controllers/zoom_drawer_controller.dart';
import 'package:csacademy/screens/menu/info_card.dart';
import 'package:csacademy/screens/menu/side_menu_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMenuScreen extends GetView<MyZoomDrawerController> {
  const MyMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      width: double.maxFinite,
      color: Colors.transparent,
      child: Theme(
        data: ThemeData(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: onSurfaceTextColor),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              InfoCard(controller: controller),
              const SizedBox(height: 25),
              SideMenuTile(
                icon: CupertinoIcons.home,
                label: 'Home',
                onPressed: () => controller.website(),
              ),
              SideMenuTile(
                icon: CupertinoIcons.settings,
                label: 'Settings',
                onPressed: () => controller.openSettings(),
              ),
              SideMenuTile(
                icon: CupertinoIcons.info_circle,
                label: 'About Us',
                onPressed: () => controller.aboutUs(),
              ),
              const Spacer(),
              SideMenuTile(
                icon: CupertinoIcons.square_arrow_right,
                label: 'Logout',
                onPressed: () => controller.signOut(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
