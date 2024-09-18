import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:csacademy/controllers/zoom_drawer_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.controller,
  });

  final MyZoomDrawerController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.user.value == null
          ? const ListTile(
              leading: CircleAvatar(
                child: Icon(CupertinoIcons.person),
              ),
              title: Text(
                "Guest",
                style: TextStyle(
                    color: onSurfaceTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            )
          : ListTile(
              leading: CircleAvatar(
                backgroundImage: controller.user.value!.photoURL != null
                    ? NetworkImage(controller.user.value!.photoURL!)
                    : null,
                child: controller.user.value!.photoURL == null
                    ? const Icon(CupertinoIcons.person)
                    : null,
              ),
              title: Text(
                controller.user.value!.displayName ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: onSurfaceTextColor,
                ),
              ),
            ),
    );
  }
}
