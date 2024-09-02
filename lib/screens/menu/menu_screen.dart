import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:csacademy/controllers/zoom_drawer_controller.dart';
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
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: BackButton(
                  color: Colors.white,
                  onPressed: () {
                    controller.toggleDrawer();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.3),
                child: Column(
                  children: [
                    Obx(
                      () => controller.user.value == null
                          ? const SizedBox()
                          : Text(
                              controller.user.value!.displayName ?? '',
                              style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: onSurfaceTextColor,
                              ),
                            ),
                    ),
                    const Spacer(flex: 1),
                    _DrawerButton(
                      icon: Icons.web,
                      label: "website",
                      onPressed: () => controller.website(),
                    ),
                    const Spacer(flex: 4),
                    _DrawerButton(
                      icon: Icons.logout,
                      label: "logout",
                      onPressed: () => controller.signOut(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _DrawerButton extends StatelessWidget {
  const _DrawerButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      label: Text(label),
      icon: Icon(
        icon,
        size: 15,
      ),
    );
  }
}
