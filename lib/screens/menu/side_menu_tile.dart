import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({
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
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        ListTile(
          onTap: onPressed,
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              icon,
              color: onSurfaceTextColor,
            ),
          ),
          title: Text(
            label,
            style: const TextStyle(color: onSurfaceTextColor),
          ),
        ),
      ],
    );
  }
}
